.class public Lcom/motorola/camera/mcf/Mcf$6;
.super Ljava/lang/Object;
.source "Mcf.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/mcf/Mcf;->postFullFrameEventFromNative(IIIIIIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$data:[B

.field public final synthetic val$instanceID:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field public final synthetic val$obj3:Ljava/lang/Object;

.field public final synthetic val$obj4:Ljava/lang/Object;

.field public final synthetic val$shotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public final synthetic val$thumb:[B


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$instanceID:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$data:[B

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$thumb:[B

    iput-object p4, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$shotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p5, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$obj3:Ljava/lang/Object;

    iput-object p6, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$obj4:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$700()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$800(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for full frame event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$700()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$800(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$instanceID:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$data:[B

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$thumb:[B

    iget-object v5, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$shotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$obj3:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$6;->val$obj4:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lcom/motorola/camera/mcf/McfMetadata;

    invoke-interface/range {v1 .. v7}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->onJpegData(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postFullFrameEventFromNative: "

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/mcf/Mcf$10$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
