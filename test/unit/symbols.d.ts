/**
 * See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations
 * 
 * List of possible combinations
 * https://www.typescriptlang.org/docs/handbook/declaration-merging.html#basic-concepts
 * 
 * The 3 kinds of declarations possible, all using the same name 
 */
export const ValueTypedefNamespace: string;
export type ValueTypedefNamespace = number;
export namespace ValueTypedefNamespace {
    type Y = string;
}


export type TypedefValueModule = number;
export namespace TypedefValueModule {
    const X: number;
    type Y = string;
}


export enum EnumValueModule { A, B }
export namespace EnumValueModule {
    const X: number;
    type Y = string;
}


export class ClassValueModule {
    constructor(i: number);
    field: string;
    static staticField: number;
}
export namespace ClassValueModule {
    const X: number;
    function Fn(overloadParam: number): number;
    function Fn(): number;
    type Y = string;
}
export function ClassValueModule(arg: number);


export interface InterfaceValueModule { field: string }
export namespace InterfaceValueModule {
    const X: number;
    type Y = string;
}

interface BaseInterface { baseInterfaceField: number; }
export class BaseClass { baseClassField: number; }

export interface MergedInterfaceClass { interfaceField1: number; }
export interface MergedInterfaceClass extends BaseInterface { interfaceField2: number; }
export class MergedInterfaceClass extends BaseClass { classField: string; constructor() }


export interface CallableInterface {
    field: string;
    (anotherSignature): number;
}
export function CallableInterface(overloadParam: number): number;
export function CallableInterface(): number;

export function FunctionValueModule(): number;
export namespace FunctionValueModule {
    const X: number;
}