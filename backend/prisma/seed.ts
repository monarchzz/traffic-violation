import { PrismaClient, Document } from '@prisma/client';
import * as fs from 'fs';

const prisma = new PrismaClient();

async function main() {
  await seed();
  // await backup();
}

async function seed() {
  await prisma.report.deleteMany();
  await prisma.comment.deleteMany();
  await prisma.log.deleteMany();
  await prisma.referenceDocument.deleteMany();
  await prisma.document.deleteMany();
  await prisma.section.deleteMany();
  await prisma.violation.deleteMany();
  await prisma.user.deleteMany();
  console.log('Seeding...');
  const docFile = fs.readFileSync(__dirname + '/data/100.txt');
  // const documentJson = fs.readFileSync(
  //   __dirname + '/data/document.json',
  //   'utf8',
  // );
  const logJson = fs.readFileSync(__dirname + '/data/log.json', 'utf8');
  const referenceDocumentJson = fs.readFileSync(
    __dirname + '/data/referenceDocument.json',
    'utf8',
  );
  const sectionJson = fs.readFileSync(__dirname + '/data/section.json', 'utf8');
  const userJson = fs.readFileSync(__dirname + '/data/user.json', 'utf8');
  const violationJson = fs.readFileSync(
    __dirname + '/data/violation.json',
    'utf8',
  );
  const reportJson = fs.readFileSync(__dirname + '/data/report.json', 'utf8');
  const commentJson = fs.readFileSync(__dirname + '/data/comment.json', 'utf8');

  await prisma.document.createMany({
    data: {
      id: '62b871c17d9d11c1ca834881',
      data: docFile.toString(),
      title: '100/2019/NĐ-CP',
      createdAt: '2022-08-18T13:19:02.459Z',
    },
  });
  await prisma.user.createMany({
    data: JSON.parse(userJson),
  });
  await prisma.violation.createMany({
    data: JSON.parse(violationJson),
  });
  await prisma.section.createMany({
    data: JSON.parse(sectionJson),
  });
  await prisma.referenceDocument.createMany({
    data: JSON.parse(referenceDocumentJson),
  });
  await prisma.log.createMany({
    data: JSON.parse(logJson),
  });
  await prisma.report.createMany({
    data: JSON.parse(reportJson),
  });
  await prisma.comment.createMany({ data: JSON.parse(commentJson) });
}

async function backup() {
  fs.writeFileSync(
    'prisma/data/comment.json',
    JSON.stringify(await prisma.comment.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/document.json',
    JSON.stringify(await prisma.document.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/log.json',
    JSON.stringify(await prisma.log.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/referenceDocument.json',
    JSON.stringify(await prisma.referenceDocument.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/report.json',
    JSON.stringify(await prisma.report.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/section.json',
    JSON.stringify(await prisma.section.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/user.json',
    JSON.stringify(await prisma.user.findMany()),
  );
  fs.writeFileSync(
    'prisma/data/violation.json',
    JSON.stringify(await prisma.violation.findMany()),
  );
}

main()
  .catch((e) => console.error(e))
  .finally(async () => {
    await prisma.$disconnect();
  });
