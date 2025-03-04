program CadastroRotas;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {MainFrm},
  UsuarioForm in 'UsuarioForm.pas' {UsuarioFrm},
  InfracaoForm in 'InfracaoForm.pas' {InfracaoFrm},
  AboutForm in 'AboutForm.pas' {AboutFrm},
  LoginForm in 'LoginForm.pas' {LoginFrm},
  DataModuloMySql in 'DataModuloMySql.pas' {dmMySql: TDataModule},
  CadastroUsuarioForm in 'CadastroUsuarioForm.pas' {CadastroUsuarioFrm},
  CadastroInfracaoForm in 'CadastroInfracaoForm.pas' {CadastroInfracaoFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainFrm, MainFrm);
  Application.CreateForm(TdmMySql, dmMySql);
  Application.Run;
end.
