.class public Landroid/arch/core/b/c;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/core/b/c$c;,
        Landroid/arch/core/b/c$f;,
        Landroid/arch/core/b/c$d;,
        Landroid/arch/core/b/c$b;,
        Landroid/arch/core/b/c$a;,
        Landroid/arch/core/b/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private Ja:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/arch/core/b/c$f<",
            "TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mEnd:Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mStart:Landroid/arch/core/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/arch/core/b/c;->mSize:I

    return-void
.end method

.method static synthetic a(Landroid/arch/core/b/c;)Landroid/arch/core/b/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    return-object p0
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/arch/core/b/c$b;

    iget-object v1, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    iget-object v2, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/b/c$b;-><init>(Landroid/arch/core/b/c$c;Landroid/arch/core/b/c$c;)V

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/arch/core/b/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroid/arch/core/b/c;

    .line 3
    invoke-virtual {p0}, Landroid/arch/core/b/c;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/arch/core/b/c;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroid/arch/core/b/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/arch/core/b/c;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 6
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_4

    if-nez v3, :cond_5

    :cond_4
    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    return v2

    .line 10
    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    return v0
.end method

.method protected get(Ljava/lang/Object;)Landroid/arch/core/b/c$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/arch/core/b/c$c;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object p0, p0, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/arch/core/b/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/arch/core/b/c$a;

    iget-object v1, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    iget-object v2, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/b/c$a;-><init>(Landroid/arch/core/b/c$c;Landroid/arch/core/b/c$c;)V

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public pa()Landroid/arch/core/b/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/b/c<",
            "TK;TV;>.d;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/arch/core/b/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/arch/core/b/c$d;-><init>(Landroid/arch/core/b/c;Landroid/arch/core/b/b;)V

    .line 2
    iget-object p0, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/b/c$c;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/arch/core/b/c$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/arch/core/b/c$c;

    invoke-direct {v0, p1, p2}, Landroid/arch/core/b/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget p1, p0, Landroid/arch/core/b/c;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/arch/core/b/c;->mSize:I

    .line 3
    iget-object p1, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    if-nez p1, :cond_0

    .line 4
    iput-object v0, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    .line 5
    iget-object p1, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    iput-object p1, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    return-object v0

    .line 6
    :cond_0
    iput-object v0, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    .line 7
    iput-object p1, v0, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    .line 8
    iput-object v0, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/arch/core/b/c;->get(Ljava/lang/Object;)Landroid/arch/core/b/c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, v0, Landroid/arch/core/b/c$c;->mValue:Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/arch/core/b/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/b/c$c;

    const/4 p0, 0x0

    return-object p0
.end method

.method public qa()Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/arch/core/b/c;->get(Ljava/lang/Object;)Landroid/arch/core/b/c$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v1, p0, Landroid/arch/core/b/c;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/arch/core/b/c;->mSize:I

    .line 3
    iget-object v1, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/arch/core/b/c;->Ja:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/core/b/c$f;

    .line 5
    invoke-interface {v2, p1}, Landroid/arch/core/b/c$f;->a(Landroid/arch/core/b/c$c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p1, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    iput-object v2, v1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    iput-object v1, p0, Landroid/arch/core/b/c;->mStart:Landroid/arch/core/b/c$c;

    .line 9
    :goto_1
    iget-object v1, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    if-eqz v1, :cond_3

    .line 10
    iget-object p0, p1, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    iput-object p0, v1, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    goto :goto_2

    .line 11
    :cond_3
    iget-object v1, p1, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    iput-object v1, p0, Landroid/arch/core/b/c;->mEnd:Landroid/arch/core/b/c$c;

    .line 12
    :goto_2
    iput-object v0, p1, Landroid/arch/core/b/c$c;->mNext:Landroid/arch/core/b/c$c;

    .line 13
    iput-object v0, p1, Landroid/arch/core/b/c$c;->Ga:Landroid/arch/core/b/c$c;

    .line 14
    iget-object p0, p1, Landroid/arch/core/b/c$c;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 1
    iget p0, p0, Landroid/arch/core/b/c;->mSize:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Landroid/arch/core/b/c;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
