import { IsInt, IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateJatekDto {
    @IsNotEmpty()
    @IsInt()
    id: number

    @IsNotEmpty()
    @IsString()
    megnevezes: string

    @IsNotEmpty()
    @IsString()
    anyag: string

    @IsNotEmpty()
    @IsInt()
    suly: number
}
