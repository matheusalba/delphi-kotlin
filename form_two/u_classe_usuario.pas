unit u_classe_usuario;

{$mode ObjFPC}{$H+}

interface

uses
Dialogs;

type
  TUsuario = class(TObject)
    private
    public
      constructor Create();overload;
      constructor Create(_nome: String;_cpf:String);overload;
      var nome: String;
      var cpf: String;
      var telefone: String;
      procedure getUsuario;
end;

implementation
procedure TUsuario.getUsuario;
begin
     showmessage('ok');
end;

constructor TUsuario.Create();
begin
     nome:='nome default';
end;

constructor TUsuario.Create(_nome:String;_cpf:String);
begin
     nome := _nome;
     cpf := _cpf;
end;

end.

