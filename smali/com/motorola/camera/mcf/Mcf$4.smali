.class public Lcom/motorola/camera/mcf/Mcf$4;
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
.field public final synthetic val$arg2:I

.field public final synthetic val$arg3:I

.field public final synthetic val$arg5:I

.field public final synthetic val$argl1:J

.field public final synthetic val$obj1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIILjava/lang/Object;J)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg2:I

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg3:I

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg5:I

    iput-object p4, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$obj1:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$argl1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$700()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->access$800(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v1, :cond_3

    .line 2
    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg2:I

    .line 3
    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ProgressType;->INVALID:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    sparse-switch v0, :sswitch_data_0

    .line 4
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Unknown ProgressType input : "

    invoke-static {v4, v0, v3}, Lcom/morphoinc/app/panoramagp3/MorphoPanoramaGP3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 5
    :sswitch_0
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SWJPEG_REPROC_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 6
    :sswitch_1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_TRANSFER_APP:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 7
    :sswitch_2
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_BG_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 8
    :sswitch_3
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 9
    :sswitch_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 10
    :sswitch_5
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->REPROCESS_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 11
    :sswitch_6
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->CANCELLED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 12
    :sswitch_7
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 13
    :sswitch_8
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 14
    :sswitch_9
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_FAILURE:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 15
    :sswitch_a
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 16
    :sswitch_b
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->ALGORITHM_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 17
    :sswitch_c
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 18
    :sswitch_d
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->FRAME_COLLECTION_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 19
    :sswitch_e
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 20
    :sswitch_f
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->STATE_MACHINE_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STOPPED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ProgressType;->SEQ_STARTED:Lcom/motorola/camera/mcf/Mcf$ProgressType;

    :goto_0
    move-object v2, v0

    .line 23
    :cond_2
    :goto_1
    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg3:I

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->access$1200(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v3

    .line 24
    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$arg5:I

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$obj1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-wide v5, p0, Lcom/motorola/camera/mcf/Mcf$4;->val$argl1:J

    invoke-interface/range {v1 .. v6}, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;->onProgressIndication(Lcom/motorola/camera/mcf/Mcf$ProgressType;Lcom/motorola/camera/mcf/Mcf$SceneMode;Lcom/motorola/camera/mcf/McfInstanceIdentifier;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 26
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postFullFrameEventFromNative: "

    invoke-static {v1, p0, v0}, Lcom/motorola/camera/mcf/Mcf$10$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_f
        0x8 -> :sswitch_e
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x40 -> :sswitch_b
        0x80 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x400 -> :sswitch_7
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_5
        0x2000 -> :sswitch_4
        0x4000 -> :sswitch_3
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
    .end sparse-switch
.end method
