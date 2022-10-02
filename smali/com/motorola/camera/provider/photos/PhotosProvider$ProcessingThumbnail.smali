.class public Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;
.super Ljava/lang/Object;
.source "PhotosProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/provider/photos/PhotosProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessingThumbnail"
.end annotation


# instance fields
.field public mScheduledForRemoval:Z

.field public final mThumbnail:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/motorola/camera/provider/photos/PhotosProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mScheduledForRemoval:Z

    .line 3
    iput-object p1, p0, Lcom/motorola/camera/provider/photos/PhotosProvider$ProcessingThumbnail;->mThumbnail:Ljava/io/File;

    return-void
.end method
