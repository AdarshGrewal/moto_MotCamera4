.class public Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;
.super Ljava/lang/Object;
.source "McfMlSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMlResults"
.end annotation


# instance fields
.field public mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

.field public mToastMl:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager;Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/widget/Toast;

    .line 3
    sget-object p2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-direct {p1, p2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mToastMl:Landroid/widget/Toast;

    .line 5
    new-instance p1, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults$1;-><init>(Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;)V

    iput-object p1, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    return-void
.end method


# virtual methods
.method public registerMcfMlStateListeners(ZLcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MCF_ML:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    .line 2
    iget-object p2, p2, Lcom/motorola/camera/fsm/camera/FsmContext;->mSubStateMachineMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    .line 3
    check-cast p2, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine;

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->addStateListener(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcfmanagers/McfMlSettingManager$ShowMlResults;->mMcfMlStateAdapter:Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;

    invoke-virtual {p2, p0}, Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;->removeStateListener(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
