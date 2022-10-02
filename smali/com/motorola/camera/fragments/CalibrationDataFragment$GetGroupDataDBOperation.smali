.class public Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;
.super Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/CalibrationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetGroupDataDBOperation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V

    return-void
.end method


# virtual methods
.method public query()V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "1"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW_SQL"

    const-string v3, "select keytype, calbrtnvalue, _id from events WHERE calibrationkeytype =? group by keytype"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SELECTION_ARGS"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    .line 8
    iput v2, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
