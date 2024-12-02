import { Injectable } from '@nestjs/common';
import { CreateJatekDto } from './dto/create-jatek.dto';
import { UpdateJatekDto } from './dto/update-jatek.dto';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class JatekService {
  db: PrismaService;
  constructor(db: PrismaService) {
    this.db = db;
  }

  async create( createJatekDto: CreateJatekDto) {
    return await this.db.jatek.create({
      data: createJatekDto
    });
  }

  async findAll() {
    return this.db.jatek.findMany();
  }

  async findOne(id: number) {
    return this.db.jatek.findUnique({
      where: { id },
    });
  }

  async update(id: number, updateJatekDto: UpdateJatekDto) {
    const updatedSong = await this.db.jatek.update({
      where: { id },
      data: updateJatekDto,
    });
    return updatedSong;
  }

  async remove(id: number) {
    try {
      await this.db.jatek.delete({
        where: { id },
      });
    }
    catch {
      return undefined;
    }
  }
}
