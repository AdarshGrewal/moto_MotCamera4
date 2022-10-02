.class public Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;
.super Ljava/lang/Object;
.source "PhotoMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/photometadata/PhotoMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILcom/motorola/camera/photometadata/PhotoMetadata$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    .line 9
    iput p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    .line 10
    iput p4, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/photometadata/PhotoMetadata$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->name:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->number:I

    .line 4
    iput p3, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->primaryFormat:I

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/motorola/camera/photometadata/PhotoMetadata$ExifTag;->secondaryFormat:I

    return-void
.end method
