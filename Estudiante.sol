//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Estudiante
{
    string private _nombre;
    string private _apellido;
    string private _curso;
    address private _docente;
    mapping(string => uint) private _notas_materias;
    string[] private materias;

    constructor(string memory nombre_, string memory apellido_, string memory curso_)
    {
        _nombre = nombre_;
        _apellido = apellido_;
        _curso = curso_;
        _docente = msg.sender;
    }

    function apellido() public view returns(string memory)
    {
        return _apellido;
    }

    function nombre_apellido() public view returns(string memory)
    {
        return string(abi.encodePacked(_nombre,' ',_apellido));
    }

    function curso() public view returns(string memory)
    {
        return _curso;
    }

    function set_nota_materia(uint nota, string memory materia) public
    {
        require(msg.sender == _docente, "Solo el docente puede registrar notas");
        _notas_materias[materia] = nota;
    }

    function nota_materia(string memory materia) public view returns(uint)
    {
        return _notas_materias[materia];
    }

    function aprobo(string memory materia) public view returns(bool)
    {
        return _notas_materias[materia] >= 6;
    }

    function promedio() public view returns(uint)
    {
        uint promedionotas = 0;

        for (uint i = 0; i < _notas_materias.length; i++)
        {
            
        }
    }
}