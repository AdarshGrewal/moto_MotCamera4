.class public Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;
.super Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;
.source "CinemagraphMaskActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearAllTooltipWindow"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1104a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    .line 3
    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;)V

    return-void
.end method


# virtual methods
.method public dismissTooltip()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->dismissTooltip()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->isEmptyMask()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public getAnchorRect()Landroid/graphics/Rect;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 2
    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    iget-object v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 5
    iget-object v6, v6, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 6
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-direct {v1, v3, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public getFirstTimeSetting()Lcom/motorola/camera/settings/SettingsManager$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/motorola/camera/settings/SettingsManager$Key<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    return-object p0
.end method

.method public showToolTip()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$ClearAllTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
