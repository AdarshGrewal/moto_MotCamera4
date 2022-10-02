.class public Lcom/motorola/camera/ui/uicomponents/SplashImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SplashImageView.java"


# instance fields
.field public mFirstLoading:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mFirstLoading:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mFirstLoading:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mFirstLoading:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setFirstLoading(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/SplashImageView;->mFirstLoading:Ljava/lang/Runnable;

    return-void
.end method
