unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons, Vcl.MPlayer, shellAPI, Vcl.Menus;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    MediaPlayer1: TMediaPlayer;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2, Unit5, Unit7;

procedure TForm6.FormActivate(Sender: TObject);
begin
if Form6.Visible then
Label2.Caption:='���������� ����������' + #13 +  '����� � ��� �����������';
//Label4.Caption:='�  ������ 2017-�� �������� �����'+#13+'� ��������� 1000 Freestyle, ��������� �'+#13+'MATX. �� ��������� �������� � ����'+#13+'�� ������ ��������������� ��� ����' +#13+ '�����, ������� �������� OG Buda.'+#13+'����� ����� ����� �����������'+#13+'�������� ����� ������� �����, �'+#13+'������ �� �������� ����� ������,'+#13+'� ����� ������� Tourlife. ��� �'+#13+'2018-�  ����������  ����������  �'+#13+'��������, ���������� � ��������������.'+#13+'�������� ����-������� �������� ����'+#13+'��������� ��� �������������'+#13+'�������� ��������� ����������'+#13+'������� ����������� ��� ���������'+#13+'���� ����. � ����� ����� ����'+#13+'������� ���������� � �����'+#13+'������������ ����������� 90-�,'+#13+'� ������� OG Buda ��� � ��������.';
label5.Caption:='����� ����������' +#13+ '              ����';
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Mediaplayer1.Stop;
end;

procedure TForm6.N1Click(Sender: TObject);
begin
ShellExecute(0, PChar ('Open'), PChar ('�������.chm'), nil, nil, SW_SHOW);
end;

procedure TForm6.N2Click(Sender: TObject);
begin
close;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
Mediaplayer1.Close;
form5.show;
form6.hide;
end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
Mediaplayer1.Close;
form7.show;
form6.hide;
end;

procedure TForm6.SpeedButton3Click(Sender: TObject);
begin
Mediaplayer1.Close;
form6.hide;
form2.show;
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
