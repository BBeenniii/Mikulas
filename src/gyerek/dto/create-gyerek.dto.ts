import { IsInt, IsNotEmpty, IsNumber, IsString } from "class-validator";

export class CreateGyerekDto {
    @IsNotEmpty()
    @IsInt()
    id: number

    @IsNotEmpty()
    @IsString()
    nev: string

    @IsNotEmpty()
    @IsString()
    cim: string

    @IsNotEmpty()
    @IsInt()
    jo_volt_e: number
}
