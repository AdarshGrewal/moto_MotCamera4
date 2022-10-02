.class public interface abstract Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiListener;
.super Ljava/lang/Object;
.source "RoiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RoiListener"
.end annotation


# virtual methods
.method public abstract onRoiPositionChange([Landroid/hardware/camera2/params/MeteringRectangle;)V
.end method

.method public abstract onRoiStateChange(Lcom/motorola/camera/fsm/camera/subfsms/RoiStateMachine$RoiState;)V
.end method
