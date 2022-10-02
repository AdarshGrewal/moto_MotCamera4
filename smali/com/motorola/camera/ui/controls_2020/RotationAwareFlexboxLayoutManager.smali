.class public Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;
.super Lcom/google/android/flexbox/FlexboxLayoutManager;
.source "RotationAwareFlexboxLayoutManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRotationAwareFlexboxLayoutManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotationAwareFlexboxLayoutManager.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,85:1\n1#2:86\n1849#3,2:87\n*S KotlinDebug\n*F\n+ 1 RotationAwareFlexboxLayoutManager.kt\ncom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager\n*L\n73#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;",
        "Lcom/google/android/flexbox/FlexboxLayoutManager;",
        "Landroid/content/Context;",
        "context",
        "",
        "flexDirection",
        "<init>",
        "(Landroid/content/Context;I)V",
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
.field public final animDuration:J

.field public currentAnimation:Landroid/animation/Animator;

.field public inLayout:Z

.field public rotation:F

.field public uiOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0045

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->animDuration:J

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->rotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    :goto_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public final setRotation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->rotation:F

    .line 2
    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda9;-><init>(Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;)V

    .line 4
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_1

    .line 5
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
