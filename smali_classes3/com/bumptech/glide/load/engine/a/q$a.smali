.class public final Lcom/bumptech/glide/load/engine/a/q$a;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final So:I

.field static final To:F = 0.4f

.field static final Uo:F = 0.33f

.field static final Vo:I = 0x400000


# instance fields
.field Mo:Landroid/app/ActivityManager;

.field No:F

.field Oo:F

.field Po:F

.field Qo:F

.field Ro:I

.field final context:Landroid/content/Context;

.field screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/a/q$a;->So:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->No:F

    .line 3
    sget v0, Lcom/bumptech/glide/load/engine/a/q$a;->So:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    const v0, 0x3ecccccd    # 0.4f

    .line 4
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Po:F

    const v0, 0x3ea8f5c3    # 0.33f

    .line 5
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Qo:F

    const/high16 v0, 0x400000

    .line 6
    iput v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Ro:I

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->context:Landroid/content/Context;

    const-string v0, "activity"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    .line 9
    new-instance v0, Lcom/bumptech/glide/load/engine/a/q$b;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/a/q$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/a/q;->a(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Ro:I

    return-object p0
.end method

.method public build()Lcom/bumptech/glide/load/engine/a/q;
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/a/q;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/a/q;-><init>(Lcom/bumptech/glide/load/engine/a/q$a;)V

    return-object v0
.end method

.method public c(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    .line 1
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Oo:F

    return-object p0
.end method

.method public d(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    .line 1
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Qo:F

    return-object p0
.end method

.method public e(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Size multiplier must be between 0 and 1"

    .line 1
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Po:F

    return-object p0
.end method

.method public f(F)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    .line 1
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->b(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->No:F

    return-object p0
.end method

.method setActivityManager(Landroid/app/ActivityManager;)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->Mo:Landroid/app/ActivityManager;

    return-object p0
.end method

.method setScreenDimensions(Lcom/bumptech/glide/load/engine/a/q$c;)Lcom/bumptech/glide/load/engine/a/q$a;
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/q$a;->screenDimensions:Lcom/bumptech/glide/load/engine/a/q$c;

    return-object p0
.end method
