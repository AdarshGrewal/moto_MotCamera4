.class public Lcom/motorola/camera/fsm/camera/CameraFsm$1;
.super Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;
.source "CameraFsm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/fsm/camera/CameraFsm$Builder<",
        "Lcom/motorola/camera/fsm/camera/CameraFsm;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$delayBuilder:Lcom/motorola/camera/fsm/camera/iFsmBuilder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/iFsmBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraFsm$1;->val$delayBuilder:Lcom/motorola/camera/fsm/camera/iFsmBuilder;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraFsm$Builder;-><init>()V

    return-void
.end method
