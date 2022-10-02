.class public final Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CliContentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/motorola/camera/arch/view/BasePresentation<",
        "Lcom/motorola/camera/cli/content/CliContentViewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $orientation:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<get-cliDisplay>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/Display;

    .line 5
    iget v2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    invoke-direct {v0, p1, v1, v2}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    .line 7
    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    return-object v0
.end method
