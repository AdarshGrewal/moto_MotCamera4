.class public final Lcom/google/android/exoplayer2/text/Cue$Builder;
.super Ljava/lang/Object;
.source "Cue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/Cue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public bitmapHeight:F

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public multiRowAlignment:Landroid/text/Layout$Alignment;

.field public position:F

.field public positionAnchor:I

.field public shearDegrees:F

.field public size:F

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:Landroid/text/Layout$Alignment;

.field public textSize:F

.field public textSizeType:I

.field public verticalType:I

.field public windowColor:I

.field public windowColorSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 8
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 9
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 11
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 12
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 13
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 14
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    const/high16 v0, -0x1000000

    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 17
    iput v1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/text/Cue$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    .line 20
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    .line 21
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 22
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 23
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    .line 24
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    .line 25
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    .line 26
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    .line 27
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    .line 28
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->textSizeType:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    .line 29
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->textSize:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    .line 30
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    .line 31
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    .line 32
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    .line 33
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    .line 34
    iget p2, p1, Lcom/google/android/exoplayer2/text/Cue;->verticalType:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    .line 35
    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->shearDegrees:F

    iput p1, p0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Lcom/google/android/exoplayer2/text/Cue;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmap:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->line:F

    iget v7, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineType:I

    iget v8, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->lineAnchor:I

    iget v9, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->position:F

    iget v10, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->positionAnchor:I

    iget v11, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSizeType:I

    iget v12, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->textSize:F

    iget v13, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->size:F

    iget v14, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->bitmapHeight:F

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColorSet:Z

    move-object/from16 v21, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->windowColor:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->verticalType:I

    move/from16 v17, v1

    iget v0, v0, Lcom/google/android/exoplayer2/text/Cue$Builder;->shearDegrees:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLcom/google/android/exoplayer2/text/Cue$1;)V

    return-object v20
.end method
