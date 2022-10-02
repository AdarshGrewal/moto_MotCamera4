.class public final synthetic Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;


# direct methods
.method public static m(Landroid/view/View;ILandroid/widget/ImageButton;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
