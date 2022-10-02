.class public Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;
.super Ljava/lang/Object;
.source "BgServiceHandler.java"


# instance fields
.field public bgServiceMsgIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler$1;-><init>(Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/BgServiceHandler;->bgServiceMsgIntf:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    return-void
.end method
