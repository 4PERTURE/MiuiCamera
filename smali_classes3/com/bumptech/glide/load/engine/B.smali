.class Lcom/bumptech/glide/load/engine/B;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/f;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/f;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private Pn:I

.field private Qn:Lcom/bumptech/glide/load/engine/C;

.field private final cb:Lcom/bumptech/glide/load/engine/f$a;

.field private final jm:Lcom/bumptech/glide/load/engine/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;"
        }
    .end annotation
.end field

.field private km:I

.field private lm:Lcom/bumptech/glide/load/c;

.field private mm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/model/t<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private nm:I

.field private volatile om:Lcom/bumptech/glide/load/model/t$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/t$a<",
            "*>;"
        }
    .end annotation
.end field

.field private pm:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/g;Lcom/bumptech/glide/load/engine/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/g<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    return-void
.end method

.method private in()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/B;->nm:I

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->mm:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public K()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->gj()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->kj()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->lj()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->mm:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/B;->in()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/B;->in()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->mm:Ljava/util/List;

    iget v1, p0, Lcom/bumptech/glide/load/engine/B;->nm:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->nm:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/t;

    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->pm:Ljava/io/File;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 11
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/g;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/g;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v6

    .line 12
    invoke-interface {v0, v1, v3, v5, v6}, Lcom/bumptech/glide/load/model/t;->a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->ga()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/g;->getPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    move v2, v4

    goto :goto_1

    :cond_4
    return v2

    .line 15
    :cond_5
    :goto_2
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    .line 16
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 17
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->km:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/bumptech/glide/load/engine/B;->km:I

    .line 18
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->km:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    return v2

    .line 19
    :cond_6
    iput v2, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    .line 20
    :cond_7
    iget v3, p0, Lcom/bumptech/glide/load/engine/B;->km:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c;

    .line 21
    iget v4, p0, Lcom/bumptech/glide/load/engine/B;->Pn:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 22
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4, v11}, Lcom/bumptech/glide/load/engine/g;->d(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;

    move-result-object v10

    .line 23
    new-instance v13, Lcom/bumptech/glide/load/engine/C;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 24
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->sa()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v5

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 25
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getSignature()Lcom/bumptech/glide/load/c;

    move-result-object v7

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 26
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getWidth()I

    move-result v8

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 27
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getHeight()I

    move-result v9

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    .line 28
    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->getOptions()Lcom/bumptech/glide/load/g;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lcom/bumptech/glide/load/engine/C;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/c;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    iput-object v13, p0, Lcom/bumptech/glide/load/engine/B;->Qn:Lcom/bumptech/glide/load/engine/C;

    .line 29
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/g;->H()Lcom/bumptech/glide/load/engine/a/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->Qn:Lcom/bumptech/glide/load/engine/C;

    invoke-interface {v4, v5}, Lcom/bumptech/glide/load/engine/a/a;->b(Lcom/bumptech/glide/load/c;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/load/engine/B;->pm:Ljava/io/File;

    .line 30
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/B;->pm:Ljava/io/File;

    if-eqz v4, :cond_1

    .line 31
    iput-object v3, p0, Lcom/bumptech/glide/load/engine/B;->lm:Lcom/bumptech/glide/load/c;

    .line 32
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/B;->jm:Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/engine/g;->e(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/engine/B;->mm:Ljava/util/List;

    .line 33
    iput v2, p0, Lcom/bumptech/glide/load/engine/B;->nm:I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->Qn:Lcom/bumptech/glide/load/engine/C;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->Ex:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, p0, v2}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/B;->cb:Lcom/bumptech/glide/load/engine/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/B;->lm:Lcom/bumptech/glide/load/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->Ex:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/B;->Qn:Lcom/bumptech/glide/load/engine/C;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/f$a;->a(Lcom/bumptech/glide/load/c;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/c;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/B;->om:Lcom/bumptech/glide/load/model/t$a;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/bumptech/glide/load/model/t$a;->eq:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p0}, Lcom/bumptech/glide/load/a/d;->cancel()V

    :cond_0
    return-void
.end method
