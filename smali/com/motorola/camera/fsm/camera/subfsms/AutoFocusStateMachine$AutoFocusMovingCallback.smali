.class public abstract Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;
.super Ljava/lang/Object;
.source "AutoFocusStateMachine.java"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutoFocusMovingCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusFail(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public onAutoFocusInactive(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public abstract onAutoFocusMoving(Z)V
.end method

.method public onAutoFocusScan(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public onAutoFocusSuccess(Landroid/hardware/camera2/CaptureResult;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$AutoFocusMovingCallback;->onAutoFocusMoving(Z)V

    return-void
.end method

.method public onFocusModeChanged(II)V
    .locals 0

    return-void
.end method

.method public onManualFocusCompleted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public onManualFocusStarted(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method
