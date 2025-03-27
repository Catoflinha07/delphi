unit aula522;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.CheckLst, Vcl.Mask, Vcl.FileCtrl, Vcl.ComCtrls, Vcl.WinXCtrls,
  Vcl.NumberBox, Vcl.Samples.Spin, Vcl.Skia;

type
  Tra = class(TForm)
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Memo: TMemo;
    CheckListBox1: TCheckListBox;
    Label2: TLabel;
    LabeledEdit1: TLabeledEdit;
    ToggleSwitch1: TToggleSwitch;
    ColorListBox1: TColorListBox;
    MonthCalendar1: TMonthCalendar;
    DateTimePicker1: TDateTimePicker;
    DriveComboBox1: TDriveComboBox;
    ColorBox1: TColorBox;
    SpinEdit1: TSpinEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ra: Tra;

implementation

{$R *.dfm}

end.
