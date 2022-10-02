.class public final synthetic Lcom/google/mlkit/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.3.0"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/common/internal/zze;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/common/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/internal/zze;->zza:Lcom/google/mlkit/common/internal/zze;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    .line 2
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    sget-object p1, Lcom/google/mlkit/common/sdkinternal/zzb;->zza:Lcom/google/mlkit/common/sdkinternal/zzb;

    .line 3
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/mlkit/common/sdkinternal/zzd;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    new-instance v1, Lcom/google/android/gms/tasks/zzi;

    .line 6
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/tasks/zzi;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "MlKitCleaner"

    .line 7
    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p0
.end method
