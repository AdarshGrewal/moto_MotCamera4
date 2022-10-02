.class public final synthetic Lcom/google/android/play/core/assetpacks/zzn;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic zza:Lcom/google/android/play/core/assetpacks/zzn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzn;

    invoke-direct {v0}, Lcom/google/android/play/core/assetpacks/zzn;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzn;->zza:Lcom/google/android/play/core/assetpacks/zzn;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "AssetPackBackgroundExecutor"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
