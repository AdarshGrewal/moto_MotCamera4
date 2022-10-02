.class public Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;
.super Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;
.source "CalibrationDataFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/CalibrationDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetChildDataDBOperation"
.end annotation


# instance fields
.field public mGroupCursor:Landroid/database/Cursor;

.field public mGroupPosition:I

.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$DBOperations;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Lcom/motorola/camera/fragments/CalibrationDataFragment$1;)V

    .line 2
    iput-object p2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    .line 3
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupPosition:I

    return-void
.end method


# virtual methods
.method public query()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupPosition:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "CalibrationBackCam"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "CalibrationFrontCam"

    .line 5
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "RAW_SQL"

    const-string v5, "select keytag, calbrtnvalue, _id from events WHERE keytype = ? "

    .line 6
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v4, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "SELECTION_ARGS"

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 12
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 13
    iput v2, v0, Landroid/os/Message;->what:I

    .line 14
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget v1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->mGroupPosition:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 16
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    .line 17
    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroid/os/Handler;

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
