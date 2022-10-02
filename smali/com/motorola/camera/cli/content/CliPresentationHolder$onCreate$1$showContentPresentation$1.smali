.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliPresentationHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->showContentPresentation(Lkotlin/jvm/functions/Function1;)V
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
.field public final synthetic $createPresentation:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "Lcom/motorola/camera/cli/content/CliContentViewModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliPresentationHolder;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/cli/content/CliPresentationHolder;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+",
            "Lcom/motorola/camera/arch/view/BasePresentation<",
            "Lcom/motorola/camera/cli/content/CliContentViewModel;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->$createPresentation:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1$showContentPresentation$1;->$createPresentation:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "createPresentation"

    .line 2
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->context:Landroid/content/Context;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/arch/view/BasePresentation;

    .line 4
    invoke-virtual {v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/motorola/camera/arch/view/BasePresentationHolder;->getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/app/Presentation;->dismiss()V

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/arch/view/BasePresentationHolder;->presentationDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 9
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
