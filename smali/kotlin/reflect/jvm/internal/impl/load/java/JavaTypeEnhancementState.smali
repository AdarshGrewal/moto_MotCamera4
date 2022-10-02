.class public final Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;
.super Ljava/lang/Object;
.source "JavaTypeEnhancementState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;

.field public static final DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;


# instance fields
.field public final disabledDefaultAnnotations:Z

.field public final getReportLevelForAnnotation:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;",
            ">;"
        }
    .end annotation
.end field

.field public final jsr305:Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->Companion:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 2
    sget-object v2, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    const-string v3, "configuredKotlinVersion"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSR_305_DEFAULT_SETTINGS:Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;

    .line 5
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;->sinceVersion:Lkotlin/KotlinVersion;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4, v2}, Lkotlin/KotlinVersion;->compareTo(Lkotlin/KotlinVersion;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 7
    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;->reportLevelAfter:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v3, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationsStatus;->reportLevelBefore:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    :goto_0
    const-string v3, "globalReportLevel"

    .line 9
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->WARN:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne v2, v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 11
    :goto_1
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    const/4 v5, 0x4

    invoke-direct {v4, v2, v3, v1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;Ljava/util/Map;I)V

    .line 12
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;

    invoke-direct {v0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->DEFAULT:Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->jsr305:Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->getReportLevelForAnnotation:Lkotlin/jvm/functions/Function1;

    .line 4
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/Jsr305Settings;->isDisabled:Z

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/JavaNullabilityAnnotationSettingsKt;->JSPECIFY_ANNOTATIONS_PACKAGE:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    .line 6
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState$Companion$DEFAULT$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;->IGNORE:Lkotlin/reflect/jvm/internal/impl/load/java/ReportLevel;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaTypeEnhancementState;->disabledDefaultAnnotations:Z

    return-void
.end method
