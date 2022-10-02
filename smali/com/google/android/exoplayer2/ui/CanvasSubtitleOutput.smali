.class public final Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;
.super Landroid/view/View;
.source "CanvasSubtitleOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# instance fields
.field public bottomPaddingFraction:F

.field public cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final painters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/SubtitlePainter;",
            ">;"
        }
    .end annotation
.end field

.field public style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field public textSize:F

.field public textSizeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    const p1, 0x3d5a511a    # 0.0533f

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 6
    sget-object p1, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    const p1, 0x3da3d70a    # 0.08f

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 39
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v7, v3, v7

    if-le v7, v5, :cond_2a

    if-gt v6, v4, :cond_1

    goto/16 :goto_1b

    :cond_1
    sub-int v8, v7, v5

    .line 8
    iget v9, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    iget v10, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 9
    invoke-static {v9, v10, v3, v8}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v11, v9, v10

    if-gtz v11, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_2a

    .line 11
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/text/Cue;

    .line 12
    iget v15, v14, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v10, -0x80000000

    if-eq v15, v10, :cond_6

    .line 13
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/text/Cue;->buildUpon()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v15

    const v12, -0x800001

    .line 14
    iput v12, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 15
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    const/4 v10, 0x0

    .line 16
    iput-object v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 17
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-nez v10, :cond_3

    .line 18
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->line:F

    sub-float v10, v16, v10

    .line 19
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    const/4 v10, 0x0

    .line 20
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    goto :goto_1

    .line 21
    :cond_3
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->line:F

    neg-float v10, v10

    sub-float v10, v10, v16

    .line 22
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    const/4 v10, 0x1

    .line 23
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 24
    :goto_1
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    if-eqz v10, :cond_5

    const/4 v12, 0x2

    if-eq v10, v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 25
    iput v10, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    goto :goto_2

    :cond_5
    const/4 v12, 0x2

    .line 26
    iput v12, v15, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 27
    :goto_2
    invoke-virtual {v15}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v14

    .line 28
    :cond_6
    iget v10, v14, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iget v12, v14, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    .line 29
    invoke-static {v10, v12, v3, v8}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->resolveTextSize(IFII)F

    move-result v10

    .line 30
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    .line 31
    iget-object v15, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    move-object/from16 v19, v2

    iget v2, v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, v14, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const/high16 v20, -0x1000000

    move/from16 v21, v3

    if-eqz v0, :cond_a

    .line 33
    iget-object v3, v14, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v1

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v20, v8

    move/from16 v35, v9

    move/from16 v22, v11

    :goto_4
    move/from16 v36, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1a

    .line 34
    :cond_8
    iget-boolean v3, v14, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v3, :cond_9

    iget v3, v14, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    goto :goto_5

    :cond_9
    iget v3, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->windowColor:I

    goto :goto_5

    :cond_a
    move/from16 v3, v20

    :goto_5
    move/from16 v20, v8

    .line 35
    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    move/from16 v22, v11

    iget-object v11, v14, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    if-eq v8, v11, :cond_c

    if-eqz v8, :cond_b

    .line 36
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_d

    .line 37
    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v11, v14, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 38
    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v11, v14, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v8, v11, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-ne v8, v11, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->position:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 40
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->size:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v11, v14, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    cmpl-float v8, v8, v11

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    iget v11, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    if-ne v8, v11, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    iget v11, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    if-ne v8, v11, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    if-ne v8, v3, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    iget v11, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    if-ne v8, v11, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    iget v11, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    if-ne v8, v11, :cond_d

    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 41
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v11, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v8, v11}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v8, v8, v2

    if-nez v8, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    if-ne v8, v4, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ne v8, v5, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    if-ne v8, v6, :cond_d

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-ne v8, v7, :cond_d

    .line 42
    invoke-virtual {v12, v1, v0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    move-object v0, v1

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v9

    goto/16 :goto_4

    .line 43
    :cond_d
    iget-object v8, v14, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 44
    iget-object v8, v14, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 45
    iget-object v8, v14, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 46
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    .line 47
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    .line 48
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 49
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    .line 50
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 51
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    .line 52
    iget v8, v14, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 53
    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    .line 54
    iget v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    iput v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    .line 55
    iput v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    .line 56
    iget v3, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    iput v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    .line 57
    iget v3, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    iput v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 58
    iget-object v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object v8, v15, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 59
    iput v9, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 60
    iput v10, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    .line 61
    iput v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 62
    iput v4, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    .line 63
    iput v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    .line 64
    iput v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    .line 65
    iput v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-eqz v0, :cond_24

    .line 66
    iget-object v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 67
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_e

    .line 69
    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 70
    :cond_e
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 71
    :goto_8
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v3, v8

    .line 72
    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v10, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v8, v10

    .line 73
    iget-object v10, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v11, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 74
    iget v10, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v11, 0x3e000000    # 0.125f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    mul-int/lit8 v11, v10, 0x2

    sub-int v14, v3, v11

    .line 75
    iget v15, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const v18, -0x800001

    cmpl-float v23, v15, v18

    if-eqz v23, :cond_f

    int-to-float v14, v14

    mul-float/2addr v14, v15

    float-to-int v14, v14

    :cond_f
    const-string v15, "SubtitlePainter"

    if-gtz v14, :cond_10

    const-string v2, "Skipped drawing subtitle cue (insufficient space)"

    .line 76
    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v9

    move/from16 v36, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v38, v1

    move v1, v0

    move-object/from16 v0, v38

    goto/16 :goto_19

    :cond_10
    move/from16 v31, v4

    .line 77
    iget v4, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    const/16 v17, 0x0

    cmpl-float v4, v4, v17

    move/from16 v32, v5

    if-lez v4, :cond_11

    .line 78
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    iget v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v5, v5

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 79
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    move/from16 v33, v6

    move/from16 v34, v7

    const/high16 v6, 0xff0000

    const/4 v7, 0x0

    .line 80
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    :cond_11
    move/from16 v33, v6

    move/from16 v34, v7

    const/4 v7, 0x0

    .line 81
    :goto_9
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    iget v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 83
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ForegroundColorSpan;

    .line 84
    array-length v6, v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_12

    move/from16 v24, v6

    aget-object v6, v5, v7

    .line 85
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v24

    goto :goto_a

    .line 86
    :cond_12
    iget v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    if-lez v5, :cond_15

    .line 87
    iget v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-eqz v5, :cond_14

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    goto :goto_b

    .line 88
    :cond_13
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    iget v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 89
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    move/from16 v35, v9

    const/high16 v7, 0xff0000

    const/4 v9, 0x0

    .line 90
    invoke-virtual {v4, v5, v9, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_14
    :goto_b
    move/from16 v35, v9

    const/high16 v7, 0xff0000

    const/4 v9, 0x0

    .line 91
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    iget v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 92
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 93
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_15
    move/from16 v35, v9

    .line 94
    :goto_c
    iget-object v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v5, :cond_16

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 95
    :cond_16
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v9, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    move/from16 v36, v13

    iget v13, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/16 v30, 0x1

    move-object/from16 v23, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move/from16 v26, v14

    move-object/from16 v27, v5

    move/from16 v28, v9

    move/from16 v29, v13

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 96
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v6

    .line 97
    iget-object v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_d
    if-ge v9, v7, :cond_17

    move/from16 v23, v7

    .line 98
    iget-object v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v7, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v7

    move/from16 v37, v0

    float-to-double v0, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v7, v23

    move/from16 v0, v37

    goto :goto_d

    :cond_17
    move/from16 v37, v0

    .line 99
    iget v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    if-ge v13, v14, :cond_18

    goto :goto_e

    :cond_18
    move v14, v13

    :goto_e
    add-int/2addr v14, v11

    .line 100
    iget v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v7, v0, v1

    if-eqz v7, :cond_1b

    int-to-float v1, v3

    mul-float/2addr v1, v0

    .line 101
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v0, v1

    .line 102
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_19

    goto :goto_f

    :cond_19
    sub-int/2addr v0, v14

    goto :goto_f

    :cond_1a
    const/4 v7, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v14

    .line 103
    div-int/2addr v0, v7

    .line 104
    :goto_f
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v14, v0

    .line 105
    iget v1, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_10

    :cond_1b
    const/4 v7, 0x2

    sub-int/2addr v3, v14

    .line 106
    div-int/2addr v3, v7

    iget v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v0, v3

    add-int v1, v0, v14

    :goto_10
    sub-int/2addr v1, v0

    if-gtz v1, :cond_1c

    const-string v0, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 107
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move/from16 v1, v37

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto/16 :goto_19

    .line 108
    :cond_1c
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const v7, -0x800001

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_22

    .line 109
    iget v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v7, :cond_1f

    int-to-float v7, v8

    mul-float/2addr v7, v3

    .line 110
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v3, v7

    .line 111
    iget v7, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1d

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_11

    :cond_1d
    const/4 v9, 0x1

    if-ne v7, v9, :cond_1e

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v6

    .line 112
    div-int/2addr v3, v8

    :cond_1e
    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_12

    .line 113
    :cond_1f
    iget-object v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v3

    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v7}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v3, v8

    .line 114
    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const/4 v9, 0x0

    cmpl-float v11, v8, v9

    if-ltz v11, :cond_20

    int-to-float v3, v3

    mul-float/2addr v8, v3

    .line 115
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v3, v8

    goto :goto_12

    :cond_20
    add-float v8, v8, v16

    int-to-float v3, v3

    mul-float/2addr v8, v3

    .line 116
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v3, v8

    :goto_11
    sub-int/2addr v3, v6

    :goto_12
    add-int v8, v3, v6

    .line 117
    iget v11, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v8, v11, :cond_21

    sub-int v3, v11, v6

    goto :goto_13

    .line 118
    :cond_21
    iget v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ge v3, v6, :cond_23

    goto :goto_14

    :cond_22
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 119
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v3, v6

    int-to-float v6, v8

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v3, v6

    :cond_23
    :goto_13
    move v6, v3

    .line 120
    :goto_14
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v11, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v13, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v14, 0x1

    const/16 v30, 0x1

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move-object/from16 v25, v8

    move/from16 v26, v1

    move-object/from16 v27, v5

    move/from16 v28, v11

    move/from16 v29, v13

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 121
    new-instance v2, Landroid/text/StaticLayout;

    iget-object v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v11, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move/from16 v28, v8

    move/from16 v29, v11

    move/from16 v30, v14

    invoke-direct/range {v23 .. v30}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 122
    iput v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    .line 123
    iput v6, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    .line 124
    iput v10, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    goto/16 :goto_18

    :cond_24
    move/from16 v37, v0

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v9

    move/from16 v36, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 125
    iget-object v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 128
    iget v1, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 129
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v4, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v3, v4

    int-to-float v2, v2

    int-to-float v1, v1

    .line 130
    iget v5, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v2

    int-to-float v2, v4

    int-to-float v3, v3

    .line 131
    iget v4, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    .line 132
    iget v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 133
    iget v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    const v6, -0x800001

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_25

    mul-float/2addr v3, v2

    .line 134
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_15

    :cond_25
    int-to-float v2, v1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 136
    :goto_15
    iget v2, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    int-to-float v2, v1

    goto :goto_16

    :cond_26
    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 137
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    :goto_16
    sub-float/2addr v5, v2

    .line 138
    :cond_27
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 139
    iget v3, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_28

    int-to-float v3, v0

    goto :goto_17

    :cond_28
    const/4 v5, 0x1

    if-ne v3, v5, :cond_29

    .line 140
    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    :goto_17
    sub-float/2addr v4, v3

    .line 141
    :cond_29
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 142
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v12, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    :goto_18
    move-object/from16 v0, p1

    move/from16 v1, v37

    .line 143
    :goto_19
    invoke-virtual {v12, v0, v1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    :goto_1a
    add-int/lit8 v13, v36, 0x1

    move-object v1, v0

    move v10, v9

    move-object/from16 v2, v19

    move/from16 v8, v20

    move/from16 v3, v21

    move/from16 v11, v22

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v33

    move/from16 v7, v34

    move/from16 v9, v35

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_2a
    :goto_1b
    return-void
.end method

.method public update(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cues",
            "style",
            "textSize",
            "textSizeType",
            "bottomPaddingFraction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;",
            "Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;",
            "FIF)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->cues:Ljava/util/List;

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->style:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    .line 3
    iput p3, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSize:F

    .line 4
    iput p4, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->textSizeType:I

    .line 5
    iput p5, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->bottomPaddingFraction:F

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->painters:Ljava/util/List;

    new-instance p3, Lcom/google/android/exoplayer2/ui/SubtitlePainter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
