MODULE Module1
    CONST robtarget Home_right:=[[344.291801459,-85.841856051,296.551221454],[0.022682007,0.043206147,0.998306481,0.031669002],[1,1,-1,5],[174.914380831,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePickPosition_right:=[[341.74095962,-5.16868768,249.48783443],[0,0,1,0],[1,0,-1,5],[174.914380831,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickPosition_right:=[[341.74095962,-5.16868768,199.48783443],[0,0,1,0],[1,0,-1,5],[174.914380831,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ChangePickposition_right:=[[341.741394702,44.830668466,249.487509921],[-0.000000407,-0.000000231,0.724059959,0.689737033],[1,-1,1,5],[160.826792431,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlacePosition_right:=[[330.40595962,-4.17568768,118.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlacePosition_right:=[[330.40595962,-4.17568768,68.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget AbovePlaceOtherPosition_right:=[[429.19695962,-4.17568768,118.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceOtherPosition_right:=[[429.19695962,-4.17568768,68.85283443],[0,0,1,0],[0,0,0,0],[168.052678631,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !***************************
    !*Autore: Leonardo Testolin*
    !***************************
    
    PROC main()
        Path_threetask_right;
    ENDPROC
    PROC Path_threetask_right()
        Reset GripperRight;
        WaitTime 2.5;
        MoveL Home_right,v1000,fine,tool0\WObj:=wobj0;
        MoveL AbovePickPosition_right,v1000,fine,tool0\WObj:=wobj0;
        MoveL PickPosition_right,v1000,fine,tool0\WObj:=wobj0;
        Set GripperRight;
        MoveL AbovePickPosition_right,v1000,fine,tool0\WObj:=wobj0;
        MoveL ChangePickposition_right,v1000,fine,tool0\WObj:=wobj0;
        WaitTime 3;
        MoveL Home_right,v1000,fine,tool0\WObj:=wobj0;
        WaitTime 1;
    ENDPROC
ENDMODULE