// Generate PNG icons from SVG using sharp
// Usage:
//   1) npm init -y
//   2) npm i sharp
//   3) node scripts/gen-icons.mjs

import fs from 'node:fs/promises';
import path from 'node:path';
import sharp from 'sharp';
let toIco = null;
try {
  const mod = await import('to-ico');
  toIco = mod.default || mod;
} catch {}

const root = path.resolve(process.cwd());
const srcSvg = path.join(root, 'icons', 'moto-icon.svg');
const outDir = path.join(root, 'icons');

const targets = [
  { file: 'icon-16.png', size: 16 },
  { file: 'icon-32.png', size: 32 },
  { file: 'icon-180.png', size: 180 },
  { file: 'icon-192.png', size: 192 },
  { file: 'icon-256.png', size: 256 },
  { file: 'icon-512.png', size: 512 },
];

async function main() {
  try {
    await fs.access(srcSvg);
  } catch {
    console.error('Source SVG not found:', srcSvg);
    process.exit(1);
  }

  await fs.mkdir(outDir, { recursive: true });

  const svg = await fs.readFile(srcSvg);
  for (const { file, size } of targets) {
    const out = path.join(outDir, file);
    await sharp(svg, { density: 384 }) // higher density for crisp edges
      .resize(size, size, { fit: 'cover' })
      .png({ compressionLevel: 9 })
      .toFile(out);
    console.log('Generated', out);
  }

  // Optionally generate favicon.ico for legacy browsers
  if (toIco) {
    try {
      const p16 = path.join(outDir, 'icon-16.png');
      const p32 = path.join(outDir, 'icon-32.png');
      const [b16, b32] = await Promise.all([fs.readFile(p16), fs.readFile(p32)]);
      const ico = await toIco([b16, b32]);
      const outIco = path.join(root, 'favicon.ico');
      await fs.writeFile(outIco, ico);
      console.log('Generated', outIco);
    } catch (e) {
      console.warn('to-ico failed, favicon.ico not generated:', e?.message || e);
    }
  } else {
    console.warn('to-ico not installed. Install with: npm i to-ico  (optional)');
  }
}

main().catch(err => { console.error(err); process.exit(1); });
