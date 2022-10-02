.class public abstract Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.super Ljava/lang/Object;
.source "HelpTooltips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tooltip"
.end annotation


# instance fields
.field public final mActionResource:I

.field public mArrowDirection:I

.field public final mCanRotate:Z

.field public mDismissed:Z

.field public final mHasGradient:Z

.field public mRadius:Ljava/lang/Float;

.field public final mShowCloseIcon:Z

.field public final mSize:Landroid/util/SizeF;

.field public mTextPaddingX:Ljava/lang/Float;

.field public mTextPaddingY:Ljava/lang/Float;

.field public final mTextResource:I

.field public mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mTextureSize:Lcom/motorola/camera/PreviewSize;

.field public final mTitleResource:I

.field public final mUseDynamicViewSize:Z


# direct methods
.method public constructor <init>(JIIILandroid/util/SizeF;IZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {p1}, Lcom/motorola/camera/PreviewSize;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    .line 3
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 5
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const p1, 0x3d4ccccd    # 0.05f

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mRadius:Ljava/lang/Float;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingX:Ljava/lang/Float;

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextPaddingY:Ljava/lang/Float;

    .line 9
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTitleResource:I

    .line 10
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextResource:I

    .line 11
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mActionResource:I

    .line 12
    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mSize:Landroid/util/SizeF;

    .line 13
    iput p7, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    .line 14
    iput-boolean p8, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mHasGradient:Z

    .line 15
    iput-boolean p9, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mCanRotate:Z

    .line 16
    iput-boolean p10, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mShowCloseIcon:Z

    .line 17
    iput-boolean p11, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mUseDynamicViewSize:Z

    return-void
.end method

.method public constructor <init>(JIILandroid/util/SizeF;IZZ)V
    .locals 12

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(JIIILandroid/util/SizeF;IZZZZ)V

    return-void
.end method


# virtual methods
.method public abstract initialize()V
.end method

.method public abstract markDismissed()V
.end method

.method public abstract shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/fsm/ChangeEvent<",
            "Lcom/motorola/camera/fsm/camera/StateKey;",
            "Lcom/motorola/camera/fsm/camera/FsmContext;",
            ">;)Z"
        }
    .end annotation
.end method

.method public shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    if-nez p0, :cond_0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateDisplay()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method

.method public abstract updateDisplay(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;I)V
.end method
