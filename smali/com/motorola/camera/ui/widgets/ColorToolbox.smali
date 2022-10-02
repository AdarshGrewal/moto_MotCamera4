.class public final Lcom/motorola/camera/ui/widgets/ColorToolbox;
.super Ljava/lang/Object;
.source "ColorToolbox.kt"


# instance fields
.field public final buttonActiveColor:I

.field public final navBarBackground:I

.field public final onPrimary:I

.field public final primaryDark:I

.field public final primaryLight:I

.field public final primaryMain:I

.field public final primaryShadow:I

.field public final sliderShadow:I

.field public final surfaceDark:I

.field public final surfaceLight:I

.field public final surfaceMain:I

.field public final surfaceMedium:I

.field public final tooltipBackground:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v0, 0x7f060316

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 4
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryMain:I

    const v0, 0x7f060312

    .line 5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 6
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryDark:I

    const v0, 0x7f060315

    .line 7
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 8
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryLight:I

    const v0, 0x7f06031c

    .line 9
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 10
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->primaryShadow:I

    const v0, 0x7f0602eb

    .line 11
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 12
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->navBarBackground:I

    const v0, 0x7f06037e

    .line 13
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 14
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->tooltipBackground:I

    const v0, 0x7f060043

    .line 15
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 16
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->buttonActiveColor:I

    const v0, 0x7f060368

    .line 17
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 18
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMain:I

    const v0, 0x7f060363

    .line 19
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 20
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceDark:I

    const v0, 0x7f060367

    .line 21
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 22
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceLight:I

    const v0, 0x7f0602f8

    .line 23
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 24
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->surfaceMedium:I

    const v0, 0x7f06035e

    .line 25
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 26
    iput v0, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->sliderShadow:I

    const v0, 0x7f0400f6

    const/high16 v1, -0x1000000

    .line 27
    invoke-static {p1, v0, v1}, Landroidx/preference/R$drawable;->getColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/ColorToolbox;->onPrimary:I

    return-void
.end method
