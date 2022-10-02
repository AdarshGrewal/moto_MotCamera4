.class public Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;
.super Lcom/motorola/camera/fragments/ReportFragment$DBOperations;
.source "ReportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fragments/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetGroupDataDBOperation"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;Lcom/motorola/camera/fragments/ReportFragment$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Lcom/motorola/camera/fragments/ReportFragment$1;)V

    return-void
.end method


# virtual methods
.method public query()V
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-virtual {v2}, Lcom/motorola/camera/fragments/ReportFragment;->getGroup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "0"

    aput-object v3, v1, v2

    const-string v3, "RAW_SQL"

    const-string v4, "SELECT keytag, ROUND(AVG(keyvalue)) AS keyvalue, camera, coldstart, mode, _id FROM events WHERE keytype = ? AND taglevel = ? GROUP BY keytag, camera, coldstart, mode ORDER BY keytag ASC"

    .line 3
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SELECTION_ARGS"

    .line 4
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->getInstance()Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 8
    iput v2, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
