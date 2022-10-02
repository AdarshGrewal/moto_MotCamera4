.class public Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;
.super Landroid/view/ViewOutlineProvider;
.source "AutoFitSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->setSurfaceViewCorner(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$radius:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;F)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-direct {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView$1;->val$radius:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
