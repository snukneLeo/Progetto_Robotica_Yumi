MODULE Module1
    CONST robtarget Home_right:=[[437.823315074,-91.780962701,185.845512946],[0.048472782,0.976646464,-0.191341213,-0.084856433],[-1,-1,-1,0],[174.969968485,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_right:=[[330.40595962,-90.19968768,118.85283443],[0,0,1,0],[-1,-1,1,0],[174.969969436,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_right:=[[330.40595962,-90.19968768,68.85283443],[0,0,1,0],[-1,-1,1,0],[174.969969436,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ChangePickposition_right:=[[341.741394702,44.830668466,249.487509921],[-0.000000407,-0.000000231,0.724059959,0.689737033],[1,-1,1,5],[160.826792431,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_right:=[[330.40595962,-4.17568768,118.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_right:=[[330.40595962,-4.17568768,68.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceOtherPosition_right:=[[429.19695962,-4.17568768,118.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceOtherPosition_right:=[[429.19695962,-4.17568768,68.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !***************************
    !*Autore: Leonardo Testolin*
    !***************************
    
    PROC main()
        Path_rigth;
    ENDPROC
    PROC Path_rigth()
        Reset GripperRight;
        MoveL Home_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickposition_right,v1000,fine,Servo\WObj:=wobj0;
        WaitTime 2;
        MoveL Pickposition_right,v1000,fine,Servo\WObj:=wobj0;
        Set GripperRight;
        MoveL AbovePickposition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePlacePosition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlacePosition_right,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperRight;
        MoveL AbovePlacePosition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePlaceOtherPosition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL PlaceOtherPosition_right,v1000,fine,Servo\WObj:=wobj0;
        Set GripperRight;
        MoveL AbovePlaceOtherPosition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL AbovePickposition_right,v1000,fine,Servo\WObj:=wobj0;
        MoveL Pickposition_right,v1000,fine,Servo\WObj:=wobj0;
        Reset GripperRight;
        MoveL AbovePickposition_right,v1000,fine,Servo\WObj:=wobj0;
    ENDPROC
ENDMODULE