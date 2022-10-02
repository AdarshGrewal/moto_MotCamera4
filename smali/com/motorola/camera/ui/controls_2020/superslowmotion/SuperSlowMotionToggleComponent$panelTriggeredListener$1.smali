.class public final Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$panelTriggeredListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SuperSlowMotionToggleComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSuperSlowMotionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    new-instance v1, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/motorola/camera/utility/ColdStartHelper$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/superslowmotion/SuperSlowMotionToggleComponent;->shouldKeepHiddenByPanel:Z

    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
