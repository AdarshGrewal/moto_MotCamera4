.class public final Lcom/motorola/camera/storage/MediaFile$Companion;
.super Ljava/lang/Object;
.source "MediaFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/motorola/camera/storage/MediaFile$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/storage/MediaFile$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/storage/MediaFile$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaFile$Companion;->$$INSTANCE:Lcom/motorola/camera/storage/MediaFile$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;
    .locals 5

    const-string p0, "memento"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "finished is null"

    const-string/jumbo v2, "uri is null"

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    new-instance v0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;-><init>(Landroid/net/Uri;)V

    .line 6
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 7
    iput-boolean p0, v0, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    goto :goto_1

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v3, 0x2

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 11
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getPath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 13
    new-instance v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v0, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 15
    iput-boolean p0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    .line 16
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17
    iput-object p0, v0, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    :goto_1
    return-object v0

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "path is null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "backend is "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
