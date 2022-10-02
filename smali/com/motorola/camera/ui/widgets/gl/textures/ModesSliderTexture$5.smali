.class public Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "ModesSliderTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public dragDistance:F

.field public max:F

.field public move:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragApplyValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 5
    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    .line 6
    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->move:Z

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 7
    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    mul-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->move:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->move:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$500(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FLcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 11
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    .line 13
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDragEnd(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->move:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->max:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$700(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FF)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->access$700(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;FF)V

    :goto_1
    return-void
.end method

.method public onDragStart(Landroid/graphics/PointF;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->dragDistance:F

    .line 2
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    .line 3
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->mDensity:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->max:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$5;->move:Z

    return-void
.end method
