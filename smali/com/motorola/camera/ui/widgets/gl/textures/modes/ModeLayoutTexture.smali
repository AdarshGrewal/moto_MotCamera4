.class public Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;
.source "ModeLayoutTexture.java"


# instance fields
.field public mBottomToTop:Z

.field public mCenterBorder:F

.field public mRotateAnim:Z

.field public final mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;",
            ">;"
        }
    .end annotation
.end field

.field public mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    return-void
.end method


# virtual methods
.method public addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    .line 2
    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    return-void
.end method

.method public animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    if-eqz p2, :cond_0

    const/high16 v0, -0x3de00000    # -40.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 2
    :goto_0
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float v4, v1, v0

    .line 3
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V

    const-wide/16 v10, 0x118

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    const/4 v0, 0x0

    move-object v8, v15

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 4
    iget v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 6
    iget v2, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 v2, v2, 0x190

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    if-eqz p2, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3de00000    # -40.0f

    .line 2
    :goto_0
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float v4, v1, v0

    .line 3
    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLjava/lang/Runnable;)V

    const-wide/16 v10, 0x118

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x2

    const/4 v0, 0x0

    move-object v8, v15

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v8 .. v15}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    .line 4
    iget v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v7, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 5
    iget-object v0, v6, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 6
    iget v2, v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 v2, v2, 0x190

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance p4, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$3;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-direct {p4, v0, v1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setAnimation(Z)V

    .line 3
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {p4, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/TranslateAnimation;->startAnimation(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    .line 5
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    add-int/lit16 p1, p1, 0x12c

    .line 6
    invoke-virtual {p0, p4, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void
.end method

.method public changeSliderToMultiMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Ljava/lang/Runnable;Z)V
    .locals 6

    .line 1
    iget-object v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    iget-object v1, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    iget-object v2, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_0

    .line 4
    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {p0, p4, v5, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p4, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    if-eqz p6, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 7
    invoke-virtual {p0, p2, v0, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p4, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-eqz p6, :cond_4

    .line 9
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p3, p2, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p4, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 14
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeIn()Z

    move-result p3

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    if-eqz p6, :cond_7

    .line 15
    invoke-virtual {p0, p2, p4, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    .line 17
    :cond_8
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeOut()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p6, :cond_9

    .line 18
    invoke-virtual {p0, p2, v0, p5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 19
    :cond_9
    invoke-virtual {p2, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public changeSliderToSingleMode(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;Ljava/lang/Runnable;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1
    invoke-virtual/range {p5 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 4
    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 5
    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    const/high16 v7, 0x42200000    # 40.0f

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    const/4 v4, 0x0

    move-object/from16 v7, p4

    invoke-virtual {v7, v5, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    .line 6
    invoke-virtual/range {p5 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 7
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v9, v8

    .line 8
    invoke-virtual/range {p5 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ButtonCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v8, v10

    add-float/2addr v8, v9

    iget v9, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v6, v8, v9, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz p7, :cond_0

    .line 9
    invoke-virtual {p0, v3, v5, v6, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v3, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 11
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v11

    .line 14
    iget v12, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v13, v11, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    .line 15
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v13, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float/2addr v14, v10

    sub-float/2addr v13, v14

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float/2addr v14, v10

    sub-float/2addr v13, v14

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v12, v13, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_1

    .line 17
    invoke-virtual {p0, v1, v6, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v1, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 19
    :goto_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v10

    sub-float/2addr v3, v6

    .line 20
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v10

    sub-float/2addr v3, v6

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v1, v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_2

    .line 21
    invoke-virtual {p0, v2, v11, v1, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v2, v8, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_3

    .line 23
    :cond_3
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v13, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float/2addr v14, v10

    sub-float/2addr v13, v14

    .line 24
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    div-float/2addr v14, v10

    sub-float/2addr v13, v14

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v14

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v12, v13, v14, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_4

    .line 25
    invoke-virtual {p0, v2, v11, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 26
    :cond_4
    invoke-virtual {v2, v8, v12}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 27
    :goto_2
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v10

    sub-float/2addr v3, v7

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v10

    sub-float/2addr v3, v7

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    if-eqz p7, :cond_5

    .line 29
    invoke-virtual {p0, v1, v6, v2, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 30
    :cond_5
    invoke-virtual {v1, v8, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_3
    move-object/from16 v1, p1

    .line 31
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 33
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeIn()Z

    move-result v3

    const/high16 v5, -0x3de00000    # -40.0f

    if-eqz v3, :cond_8

    .line 34
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x1

    if-eqz p7, :cond_7

    move-object/from16 v6, p6

    .line 35
    invoke-virtual {p0, v2, v3, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeIn(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    move-object/from16 v6, p6

    .line 36
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 37
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v10, v5

    .line 38
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v11, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v10

    invoke-direct {v5, v11, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 39
    invoke-virtual {v2, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 40
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    :cond_8
    move-object/from16 v6, p6

    .line 41
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeOut()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 42
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    const/4 v3, 0x0

    if-eqz p7, :cond_9

    .line 43
    invoke-virtual {p0, v2, v3, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationFadeOut(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;ZLjava/lang/Runnable;)V

    goto :goto_4

    .line 44
    :cond_9
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    .line 45
    iget v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v10, v5

    .line 46
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v11, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v10

    invoke-direct {v5, v11, v7, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 47
    invoke-virtual {v2, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 48
    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public varargs declared-synchronized clearRowAndAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 3
    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public containCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public editFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->clearAnimations()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setAnimation(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSelected(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->doLayout()V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return-void
.end method

.method public findTag(I)Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 2
    instance-of v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdapter()Lcom/motorola/camera/ui/widgets/gl/ListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    return-object p0
.end method

.method public declared-synchronized layout()V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mLayoutBounds:Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;

    .line 2
    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mWidth:I

    .line 3
    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/LayoutBounds;->mHeight:I

    .line 4
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    int-to-float v2, v2

    iput v2, v3, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    .line 5
    iput v2, v3, Landroid/graphics/PointF;->y:F

    .line 6
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 7
    iget-boolean v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    if-eqz v8, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->updateCell()V

    .line 9
    iget v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    .line 10
    iget-object v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 11
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    div-int/2addr v9, v8

    .line 12
    iget-object v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 13
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    rem-int/2addr v10, v8

    if-lez v10, :cond_2

    move v7, v6

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    add-int/2addr v9, v7

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v6, v9

    .line 14
    :goto_2
    iget-object v7, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->y:F

    int-to-float v6, v6

    .line 15
    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    mul-float/2addr v6, v9

    add-float/2addr v6, v8

    .line 16
    iput v6, v7, Landroid/graphics/PointF;->y:F

    .line 17
    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mCenterBorder:F

    mul-float/2addr v6, v5

    .line 18
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedWidth:F

    add-float/2addr v6, v4

    .line 19
    iget v4, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    iput v6, v7, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 20
    :cond_4
    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mBottomToTop:Z

    if-eqz v3, :cond_5

    int-to-float v3, v0

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v3, v4

    if-lez v8, :cond_5

    sub-float/2addr v3, v4

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    if-lez v0, :cond_6

    .line 21
    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    cmpg-float v8, v8, v0

    if-gez v8, :cond_6

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 22
    :cond_6
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v5

    sub-float/2addr v0, v3

    .line 23
    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 24
    iget-boolean v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isGone:Z

    if-eqz v8, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    iget v8, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    .line 26
    iget v9, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    .line 27
    iget v10, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    .line 28
    iget-boolean v11, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->isRtl:Z

    sub-float/2addr v0, v10

    const/4 v12, 0x3

    if-ne v9, v12, :cond_8

    .line 29
    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :cond_8
    iget-object v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    neg-float v13, v13

    :goto_5
    div-float/2addr v13, v5

    const/4 v14, 0x2

    if-ne v9, v14, :cond_b

    .line 30
    iget-object v15, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mSize:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    .line 31
    iget-object v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 32
    iget v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    if-lt v7, v12, :cond_9

    goto :goto_7

    .line 33
    :cond_9
    iget v12, v14, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    add-float v16, v16, v12

    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x3

    const/4 v14, 0x2

    goto :goto_6

    :cond_a
    :goto_7
    sub-float v15, v15, v16

    div-float/2addr v15, v5

    add-float/2addr v13, v15

    .line 34
    :cond_b
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    .line 35
    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginY:F

    .line 36
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    .line 37
    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F

    if-ne v9, v6, :cond_d

    if-eqz v11, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x3

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v2, 0x3

    if-ne v9, v2, :cond_e

    if-eqz v11, :cond_e

    :goto_9
    move v7, v6

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    if-ne v9, v2, :cond_f

    if-eqz v11, :cond_10

    :cond_f
    if-ne v9, v6, :cond_11

    if-eqz v11, :cond_11

    :cond_10
    move v2, v6

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    .line 38
    :goto_b
    iget-object v12, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 39
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v14, 0x0

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 40
    iput-boolean v11, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isRtl:Z

    .line 41
    iget v5, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 42
    iget-boolean v6, v15, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isGone:Z

    if-eqz v6, :cond_12

    const/4 v5, 0x0

    :cond_12
    if-lt v14, v8, :cond_13

    sub-float/2addr v0, v10

    .line 43
    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    int-to-float v6, v6

    .line 44
    iget v13, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v6, v13

    sub-float/2addr v0, v6

    .line 45
    iget v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    const/4 v14, 0x0

    :cond_13
    if-eqz v7, :cond_14

    .line 46
    invoke-virtual {v15, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    goto :goto_d

    :cond_14
    if-eqz v2, :cond_15

    sub-float v5, v13, v5

    .line 47
    invoke-virtual {v15, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    move v13, v5

    goto :goto_e

    :cond_15
    const/4 v6, 0x2

    if-ne v9, v6, :cond_17

    if-eqz v11, :cond_16

    neg-float v6, v13

    sub-float/2addr v6, v5

    .line 48
    invoke-virtual {v15, v6, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    goto :goto_d

    .line 49
    :cond_16
    invoke-virtual {v15, v13, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    :goto_d
    add-float/2addr v13, v5

    :cond_17
    :goto_e
    const/4 v5, 0x1

    add-int/2addr v14, v5

    .line 50
    iput v13, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    .line 51
    iput v0, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v5

    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_c

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 52
    :cond_19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadTexture()V
    .locals 3

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 4
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setAdapter(Lcom/motorola/camera/ui/widgets/gl/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->loadTexture()V

    goto :goto_1

    .line 10
    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->loadTexture()V

    return-void
.end method

.method public final moveSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v3, v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v3, v4, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    xor-int/lit8 v4, v3, 0x1

    const/4 v7, 0x0

    .line 4
    iget v8, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    .line 6
    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 7
    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 8
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 9
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    move v7, v5

    move v5, v6

    :cond_3
    if-nez v5, :cond_4

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 11
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    neg-float v7, v5

    move v5, v6

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_2

    const/4 v12, 0x4

    if-eqz v4, :cond_5

    .line 12
    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 13
    iget v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v4, v8

    iput v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 14
    invoke-virtual {v2, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v13

    .line 16
    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v14, v13}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 17
    iget v15, v13, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v15, v7

    iput v15, v14, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v15, 0x0

    .line 18
    invoke-virtual {v0, v11, v13, v14, v15}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 20
    iget v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v4, v8

    iput v4, v9, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 21
    invoke-virtual {v2, v12, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_6
    :goto_2
    move-object/from16 v4, p3

    .line 22
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    return-void
.end method

.method public onChanged()V
    .locals 0

    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->onTouchDown(Landroid/graphics/PointF;J)V

    .line 2
    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mTouchDownItem:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 4
    invoke-virtual {p3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 5
    instance-of p3, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    if-eqz p3, :cond_0

    .line 6
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 8
    iput-object p0, p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public removeCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public resetDragSliderModePosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;ILcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V
    .locals 1

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 2
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p5

    .line 3
    iget p5, p5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p5, p4

    .line 4
    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 5
    invoke-virtual {p3, p0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 6
    invoke-virtual {p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 7
    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 8
    invoke-virtual {p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p5

    .line 9
    iget p5, p5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr p5, p3

    .line 10
    iget-object p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 11
    invoke-virtual {p4, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 12
    invoke-virtual {p4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_1
    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_2

    .line 13
    iget-object p3, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 14
    invoke-virtual {p5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    .line 15
    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget p3, p3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float p3, p4, p3

    .line 16
    iget-object p4, p5, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 17
    invoke-virtual {p5, p0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 18
    invoke-virtual {p5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setOldPosition(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move p5, p3

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    .line 19
    :goto_0
    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 20
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 21
    iget p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne p4, p2, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isFadeIn()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 23
    iget-object p4, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mOldPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 24
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v0

    .line 25
    iget p4, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iput p4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 26
    invoke-virtual {p3, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p4

    .line 28
    iget v0, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, p5

    iput v0, p4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 29
    invoke-virtual {p3, p0, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public row()Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public setDisplayOrientation(I)V
    .locals 11

    .line 1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 4
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 5
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 6
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRotateAnim:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v0

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    int-to-float v0, p1

    sub-float/2addr v0, v7

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-ltz v1, :cond_5

    goto :goto_1

    :cond_5
    add-float/2addr v0, v3

    :goto_1
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    sub-float/2addr v0, v3

    :cond_6
    add-float v8, v7, v0

    .line 13
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;

    invoke-direct {v4, p0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture$4;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    const-wide/16 v5, 0xa0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/Animation$AnimationCallback;JFFII)V

    .line 14
    invoke-virtual {v0, v2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    .line 15
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_3

    :cond_7
    :goto_2
    if-ge v3, v1, :cond_8

    .line 16
    aget-object p0, v2, v3

    .line 17
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public setOpacity(IFFFFFFFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 2
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mMask:I

    .line 3
    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom:F

    .line 4
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo:F

    .line 5
    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityFrom2:F

    .line 6
    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mOpacityTo2:F

    .line 7
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mShapeChange:[F

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mWidth:I

    int-to-float p2, p2

    div-float/2addr p6, p2

    const/4 p3, 0x0

    aput p6, p1, p3

    div-float/2addr p7, p2

    const/4 p2, 0x1

    .line 8
    aput p7, p1, p2

    .line 9
    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mHeight:I

    int-to-float p0, p0

    div-float/2addr p8, p0

    const/4 p2, 0x2

    aput p8, p1, p2

    div-float/2addr p9, p0

    const/4 p0, 0x3

    .line 10
    aput p9, p1, p0

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDisplayOrientation(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p1, p4, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    invoke-virtual {p1, p4, p3}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->remove(Ljava/lang/Object;)Z

    .line 12
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    :goto_0
    return-void
.end method

.method public unloadTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 3
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->unloadTexture()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->unloadTexture()V

    return-void
.end method

.method public varargs declared-synchronized updateAdapter([Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    .line 3
    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateMenuCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5
    iget-object p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 7
    iget-boolean p3, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz p3, :cond_1

    return-void

    .line 8
    :cond_2
    iget-object p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    .line 11
    invoke-virtual {p4, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    .line 12
    move-object p2, p1

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    .line 13
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getContentSize()Landroid/graphics/PointF;

    move-result-object p2

    .line 14
    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget p3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingLeft:F

    add-float/2addr p2, p3

    iget p3, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mPaddingRight:F

    add-float/2addr p2, p3

    .line 15
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    .line 16
    iget p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    .line 17
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellHeight:F

    .line 18
    iget p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextX:F

    .line 19
    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mNextY:F

    .line 20
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    .line 21
    iget-object p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 23
    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->maxCol:I

    .line 24
    div-int v1, p2, p3

    .line 25
    rem-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    .line 26
    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginX:F

    int-to-float p2, p2

    .line 27
    iget v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr p2, v2

    add-float/2addr p2, p3

    .line 28
    iget p3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mBeginY:F

    int-to-float v2, v1

    .line 29
    iget v3, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mMaxFixedHeight:F

    mul-float/2addr v2, v3

    sub-float/2addr p3, v2

    .line 30
    iget v2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mLineGap:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 31
    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float/2addr v1, v2

    sub-float/2addr p3, v1

    .line 32
    invoke-virtual {p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->updateContentBox(FF)V

    .line 33
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    .line 34
    :cond_3
    iget-object p2, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 37
    :cond_5
    invoke-virtual {p0, p3, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 38
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Lcom/google/android/play/core/appupdate/zzy;->contains(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x4

    .line 40
    iget v0, p3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-ne v0, v1, :cond_6

    goto/16 :goto_7

    .line 41
    :cond_6
    iget-object v0, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 43
    iget-object v1, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_7

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    xor-int/lit8 v1, v0, 0x1

    .line 45
    iget-object v4, p4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 46
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    .line 47
    invoke-virtual {v7, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    if-nez v2, :cond_a

    if-eqz v0, :cond_a

    .line 48
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :goto_3
    move v2, v3

    goto :goto_5

    :cond_a
    if-eqz v2, :cond_8

    .line 49
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 50
    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v9

    if-eqz v1, :cond_b

    .line 51
    invoke-virtual {p0, v6, v8, v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    goto :goto_4

    .line 52
    :cond_b
    invoke-virtual {p0, v7, v9, v8, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->animationMove(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Ljava/lang/Runnable;)V

    :goto_4
    if-eqz v1, :cond_c

    .line 53
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 54
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 55
    invoke-virtual {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    .line 56
    invoke-virtual {v7, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 57
    invoke-virtual {p3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v1

    .line 58
    invoke-virtual {p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_6

    :cond_d
    :goto_5
    move-object v6, v7

    goto :goto_2

    .line 59
    :cond_e
    :goto_6
    invoke-virtual {p0, v0, p3, p1, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->switchCell(ZLcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 60
    :goto_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_f
    return-void
.end method

.method public updateSelected(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mRows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 4
    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->setSelected(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    const/4 v5, 0x0

    if-ltz v4, :cond_10

    .line 2
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_8

    :cond_0
    move-object/from16 v4, p2

    .line 3
    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 4
    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v2

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 8
    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->isAnimation:Z

    if-eqz v4, :cond_1

    return v5

    .line 9
    :cond_2
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    if-nez v2, :cond_6

    .line 10
    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    .line 11
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoFamilyMode(I)Z

    move-result v2

    const/4 v6, 0x4

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 13
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v5

    .line 14
    iget v8, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 15
    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v9, v4

    add-float/2addr v9, v8

    .line 16
    iput v9, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 17
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v9

    .line 18
    iput v2, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 19
    invoke-virtual {v1, v6, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 20
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    .line 21
    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 23
    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    .line 24
    iget v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 25
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v10, v4

    sub-float/2addr v9, v10

    .line 26
    iput v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 27
    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v2, v4

    sub-float/2addr v9, v2

    .line 28
    iput v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    .line 29
    invoke-virtual {v1, v6, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    .line 30
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->mTableAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    .line 31
    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mGravity:I

    if-eq v2, v7, :cond_5

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 32
    :cond_4
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_5
    :goto_0
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 34
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    return v7

    .line 35
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->getRect()Lcom/google/android/play/core/appupdate/zzy;

    move-result-object v14

    const/high16 v8, 0x41c00000    # 24.0f

    .line 37
    iget v9, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mDensity:F

    mul-float v15, v9, v8

    const/high16 v8, 0x42400000    # 48.0f

    mul-float v16, v9, v8

    .line 38
    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v2, v8, v2

    const/16 v13, 0x3e8

    const/4 v12, -0x1

    if-lez v2, :cond_b

    .line 39
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 40
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    sub-int/2addr v2, v7

    :goto_2
    if-ltz v2, :cond_f

    .line 41
    iget-object v8, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 42
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 43
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto/16 :goto_6

    .line 44
    :cond_7
    iget v8, v11, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq v8, v12, :cond_8

    if-eq v8, v13, :cond_8

    move v8, v7

    goto :goto_3

    :cond_8
    move v8, v5

    :goto_3
    if-eqz v8, :cond_9

    .line 45
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float v17, v8, v4

    .line 46
    invoke-virtual {v0, v11, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    .line 47
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 48
    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float/2addr v10, v4

    add-float v18, v10, v8

    const/4 v10, 0x0

    move-object v8, v14

    move-object/from16 p2, v11

    move/from16 v11, v17

    move v7, v12

    move v12, v15

    move v5, v13

    move/from16 v13, v16

    .line 49
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/appupdate/zzy;->contains(Landroid/graphics/PointF;FFFF)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpl-float v8, v18, v8

    if-lez v8, :cond_a

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object/from16 v8, p2

    .line 52
    invoke-virtual {v0, v8, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    goto/16 :goto_5

    :cond_9
    move v7, v12

    move v5, v13

    :cond_a
    add-int/lit8 v2, v2, -0x1

    move v13, v5

    move v12, v7

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_2

    :cond_b
    move v7, v12

    move v5, v13

    .line 54
    iget-object v2, v3, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    .line 55
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;

    .line 56
    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_6

    .line 57
    :cond_d
    iget v8, v13, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mTag:I

    if-eq v8, v7, :cond_e

    if-eq v8, v5, :cond_e

    const/4 v8, 0x1

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_c

    .line 58
    iget v8, v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;->mCellWidth:F

    mul-float v10, v8, v4

    .line 59
    iget v8, v6, Landroid/graphics/PointF;->x:F

    sub-float v18, v8, v10

    .line 60
    invoke-virtual {v0, v13, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v9

    const/4 v11, 0x0

    move-object v8, v14

    move v12, v15

    move-object/from16 p2, v13

    move/from16 v13, v16

    .line 61
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/play/core/appupdate/zzy;->contains(Landroid/graphics/PointF;FFFF)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v8

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    cmpg-float v8, v18, v8

    if-gez v8, :cond_c

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_c

    move-object/from16 v8, p2

    .line 64
    invoke-virtual {v0, v8, v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :goto_5
    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v5, 0x0

    :goto_7
    return v5

    :cond_10
    :goto_8
    move v0, v5

    return v0
.end method
