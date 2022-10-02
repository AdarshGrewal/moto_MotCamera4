.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "UpdatePromptComponent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const/4 v1, 0x1

    const-string v4, "onStateUpdateChange"

    const-string v5, "onStateUpdateChange(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    const-string v0, "p0"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    .line 4
    new-instance v0, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/motorola/camera/Controller$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
