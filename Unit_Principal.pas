unit Unit_Principal;

interface

uses
  System.UITypes, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.FileCtrl, Vcl.Buttons,
  Vcl.ComCtrls, IdBaseComponent, IdAntiFreezeBase, Vcl.IdAntiFreeze;

type
  TFormPrincipal = class(TForm)
    MemoLog: TMemo;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    ListBoxBlocos: TListBox;
    BitBtnRemover: TBitBtn;
    MemoHide: TMemo;
    StatusBar: TStatusBar;
    IdAntiFreeze: TIdAntiFreeze;
    BitBtnSalvar: TBitBtn;
    ListBoxContagem: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FileListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRemoverClick(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);
    procedure ListarBlocos;
    procedure ListBoxBlocosClick(Sender: TObject);
    procedure ListBoxContagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.BitBtnRemoverClick(Sender: TObject);
var
  I: integer;
begin
  if (ListBoxBlocos.ItemIndex = -1) then
  begin
    ShowMessage('Selecione um bloco na lista.');
  end
  else
  if  (MessageDlg('Você tem certeza que deseja excluir o bloco?',mtConfirmation,[mbyes,mbno],0)=mryes) then
  begin
    FileListBox1.Enabled := False;
    DirectoryListBox1.Enabled := False;
    MemoHide.Lines.Clear;
    for I := 0 to MemoLog.Lines.Count -1 do
    begin
      StatusBar.Panels[1].Text := 'Processando linha ' + IntToStr(I + 1) + ' de ' + IntToStr(MemoLog.Lines.Count);
      Application.ProcessMessages;
      if (Copy(MemoLog.Lines[I], 1, 1) = '|') and (Copy(MemoLog.Lines[I], 6, 1) = '|') then
      begin
        if (Copy(MemoLog.Lines[I], 2, 4) <> ListBoxBlocos.Items[ListBoxBlocos.ItemIndex]) and (Copy(MemoLog.Lines[I], 1, 10) <> '|9900|' + ListBoxBlocos.Items[ListBoxBlocos.ItemIndex]) then
        begin
          MemoHide.Lines.Add(MemoLog.Lines[I]);
        end;
      end;
    end;
    MemoLog.Lines.Clear;
    MemoLog.Lines := MemoHide.Lines;
    ListarBlocos();
    Showmessage('Bloco Removido');
  end;
end;

procedure TFormPrincipal.BitBtnSalvarClick(Sender: TObject);
begin
  if  (MessageDlg('O Arquivo será sobrescrito. Você tem certeza que deseja salvar as mudanças?',mtConfirmation,[mbyes,mbno],0)=mryes) then
  begin
    MemoLog.Lines.SaveToFile(FileListBox1.Items.Strings[0]);
    Showmessage('Aquivo salvo com sucesso.');
  end;
end;

procedure TFormPrincipal.FileListBox1Click(Sender: TObject);
var
  I: Integer;
begin
  if (TFileListBox(Sender).Items.Count > 0) then
  begin
    for I := 0 to TFileListBox(Sender).Items.Count - 1 do
    begin
      if (TFileListBox(Sender).Selected[I]) then
      begin
        if (FileExists(TFileListBox(Sender).Items.Strings[0])) then
        begin
          MemoLog.Lines.LoadFromFile(TFileListBox(Sender).Items.Strings[0]);
          ListarBlocos;
        end;
      end;
    end;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  MemoLog.Lines.Clear;
  ListBoxBlocos.Clear;
  ListBoxContagem.Clear;
end;


procedure TFormPrincipal.ListarBlocos;
var
  I:integer;
begin
  ListBoxBlocos.Clear;
  ListBoxContagem.Clear;
  for I := 0 to MemoLog.Lines.Count -1 do
  begin
    if (Copy(MemoLog.Lines[I], 1, 1) = '|') and (Copy(MemoLog.Lines[I], 6, 1) = '|') then
    begin
      if (ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4)) = -1) then
      begin
        ListBoxBlocos.Items.Add(Copy(MemoLog.Lines[I], 2, 4));
        ListBoxContagem.Items.Add('1');
      end
      else
      begin
        ListBoxContagem.Items[ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4))] := IntToStr(StrToInt(ListBoxContagem.Items[ListBoxBlocos.Items.IndexOf(Copy(MemoLog.Lines[I], 2, 4))]) + 1);
      end;
    end;
  end;
  StatusBar.Panels[0].Text := IntToStr(ListBoxBlocos.Count) + ' blocos em ' + IntToStr(MemoLog.Lines.Count) + ' linhas.';
  ListBoxBlocos.ClientHeight := ListBoxBlocos.ItemHeight * ListBoxBlocos.Items.Count;
  ListBoxContagem.ClientHeight := ListBoxContagem.ItemHeight * ListBoxContagem.Items.Count;
  Application.ProcessMessages;
end;

procedure TFormPrincipal.ListBoxBlocosClick(Sender: TObject);
begin
  ListBoxContagem.ItemIndex := ListBoxBlocos.ItemIndex;
end;

procedure TFormPrincipal.ListBoxContagemClick(Sender: TObject);
begin
  ListBoxBlocos.ItemIndex := ListBoxContagem.ItemIndex;
end;

end.
