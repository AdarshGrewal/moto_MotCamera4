.class public final Lcom/google/android/play/core/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field public static final MAIN_THREAD:Ljava/util/concurrent/Executor;

.field public static final zza:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzu;-><init>(I)V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/zzk;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/zzk;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/TaskExecutors;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method
