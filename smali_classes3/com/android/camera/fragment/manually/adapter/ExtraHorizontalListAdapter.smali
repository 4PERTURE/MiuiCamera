.class public Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExtraHorizontalListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtraHorizontalListAdapter"


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mEnableGradient:Z

.field private mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

.field private mOnCreated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;IZLcom/android/camera/fragment/manually/ManuallyListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    .line 5
    iput-boolean p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mEnableGradient:Z

    .line 6
    iput-object p4, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    .line 7
    iget p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    invoke-virtual {p1, p2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method private changeValue(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ManuallyListener;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentMode:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/fragment/manually/ManuallyListener;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 8
    :cond_1
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error change value, required postion is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getValuePosition()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v0, -0xff5701

    const v1, -0x4c000001

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b003e

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;

    invoke-direct {p3, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;-><init>(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$1;)V

    const v2, 0x7f09005d

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    invoke-static {p3, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$102(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;Lcom/android/camera/ui/ColorImageView;)Lcom/android/camera/ui/ColorImageView;

    const v2, 0x7f09005e

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {p3, v2}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$202(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    .line 6
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 7
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v2}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 11
    iget-object v2, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 12
    iget v3, p1, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 13
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$100(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$100(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v3

    iget v4, p1, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$100(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v3, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_2
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$200(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 20
    :goto_3
    invoke-static {p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;->access$100(Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter$ViewHolder;)Lcom/android/camera/ui/ColorImageView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    return-object p2
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mOnCreated:Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mEnableGradient:Z

    if-nez p2, :cond_1

    check-cast p1, Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->changeValue(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
