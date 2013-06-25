.class Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DateChooseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseDateAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private count:I

.field private currMonth:I

.field private currYear:I

.field private minYear:I

.field final synthetic this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;Landroid/content/Context;III)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "currYear"
    .parameter "minYear"
    .parameter "currMonth"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->context:Landroid/content/Context;

    .line 141
    iput p3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currYear:I

    .line 142
    iput p4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->minYear:I

    .line 143
    iput p5, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currMonth:I

    .line 144
    sub-int v0, p3, p4

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->count:I

    .line 145
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 8
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const v7, 0x7f0701a1

    const v6, 0x7f070199

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v1, ""

    .line 183
    :goto_0
    return-object v1

    .line 174
    :cond_0
    if-ne p1, v4, :cond_2

    .line 175
    if-nez p2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currMonth:I

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    :cond_2
    iget v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currYear:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x1

    .line 180
    .local v0, year:I
    if-nez p2, :cond_3

    .line 181
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    rsub-int/lit8 v3, p2, 0xc

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v6, v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 194
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 221
    move-object v2, p4

    .line 222
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    .line 223
    iget-object v3, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 224
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0300ab

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 226
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, data:Ljava/lang/String;
    const v3, 0x7f090268

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-object v2
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 157
    iget v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currMonth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 5
    .parameter "groupPosition"

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    const v1, 0x7f0701a2

    invoke-virtual {v0, v1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->this$0:Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;

    const v1, 0x7f070198

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->currYear:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->count:I

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 205
    move-object v3, p3

    .line 206
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_0

    .line 207
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 208
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300ac

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 210
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v4, 0x7f090269

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 211
    .local v1, imgArrIcon:Landroid/widget/ImageView;
    if-nez p1, :cond_1

    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/chart/DateChooseDialogFragment$ChooseDateAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, data:Ljava/lang/String;
    const v4, 0x7f090268

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-object v3

    .line 211
    .end local v0           #data:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method
