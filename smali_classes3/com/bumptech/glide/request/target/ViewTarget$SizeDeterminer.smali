.class final Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;
    }
.end annotation


# static fields
.field private static final Wt:I

.field static maxDisplayLength:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field Ut:Z

.field private Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final rn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/target/n;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    return-void
.end method

.method private static O(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/util/i;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    .line 7
    :cond_0
    sget-object p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->maxDisplayLength:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private d(III)I
    .locals 2

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Ut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    return p1

    .line 2
    :cond_2
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x2

    if-ne p2, p1, :cond_4

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    .line 3
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    .line 4
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->O(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private ea(I)Z
    .locals 0

    if-gtz p1, :cond_1

    const/high16 p0, -0x80000000

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private eo()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d(III)I

    move-result p0

    return p0
.end method

.method private fo()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->d(III)I

    move-result p0

    return p0
.end method

.method private s(II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->ea(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->ea(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private t(II)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/n;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/target/n;->a(II)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method Hk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->fo()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->eo()I

    move-result v1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->s(II)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->t(II)V

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Ik()V

    return-void
.end method

.method Ik()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    .line 5
    iget-object p0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(Lcom/bumptech/glide/request/target/n;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/bumptech/glide/request/target/n;)V
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->fo()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->eo()I

    move-result v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->s(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/n;->a(II)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->rn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    .line 10
    iget-object p0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->Vt:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$a;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method
