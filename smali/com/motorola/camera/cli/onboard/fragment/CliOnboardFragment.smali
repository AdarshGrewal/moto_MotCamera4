.class public final Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;
.super Lcom/motorola/camera/arch/view/BaseFragment;
.source "CliOnboardFragment.kt"

# interfaces
.implements Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/arch/view/BaseFragment<",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;",
        ">;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCliOnboardFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CliOnboardFragment.kt\ncom/motorola/camera/cli/onboard/fragment/CliOnboardFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;",
        "Lcom/motorola/camera/arch/view/BaseFragment;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;",
        "Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;",
        "<init>",
        "()V",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public loadViewModel()Lcom/motorola/camera/arch/view/BaseViewModel;
    .locals 0

    .line 1
    new-instance p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    invoke-direct {p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;-><init>()V

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    .line 4
    check-cast p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/motorola/camera/arch/view/BaseFragment;->viewModel:Lcom/motorola/camera/arch/view/BaseViewModel;

    .line 2
    check-cast p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-object p0, p1, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    sget v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->$r8$clinit:I

    .line 5
    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapper;

    const v0, 0x7f0d0034

    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    const-string p2, "inflate(LayoutInflater.f\u2026ntext), container, false)"

    .line 7
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    .line 9
    iget-object p0, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public showOnboard(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/camera/cli/onboard/model/Onboard;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->viewBinding:Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->viewPager:Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;->buttonNavigation:Landroid/widget/Button;

    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 3
    :cond_3
    invoke-virtual {v2, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;->setAdapterFromList(Ljava/util/List;)V

    .line 4
    new-instance p1, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;

    invoke-direct {p1, v2, v1, p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$showOnboard$1;-><init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Landroid/widget/Button;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    .line 5
    iget-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_4

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 7
    :cond_4
    iget-object v0, v2, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
