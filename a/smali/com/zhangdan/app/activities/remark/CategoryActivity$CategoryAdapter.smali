.class Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CategoryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/remark/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryAdapter"
.end annotation


# instance fields
.field private groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/zhangdan/app/activities/remark/CategoryActivity;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;>;"
    iput-object p1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    .line 187
    iput-object p2, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    .line 188
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 197
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 203
    move-object/from16 v8, p4

    .line 204
    .local v8, view:Landroid/view/View;
    if-nez v8, :cond_0

    .line 205
    iget-object v9, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v9}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f0300a9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 206
    const v9, 0x7f090261

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v9, 0x7f090262

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v9, 0x7f090263

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    const v9, 0x7f09025f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-nez p2, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const v9, 0x7f090264

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->getChildrenCount(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne p2, v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v9, 0x7f090261

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 214
    .local v0, btn1:Landroid/widget/Button;
    const v9, 0x7f090262

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 215
    .local v1, btn2:Landroid/widget/Button;
    const v9, 0x7f090263

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 217
    .local v2, btn3:Landroid/widget/Button;
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    .line 218
    .local v4, group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    if-nez v4, :cond_3

    .line 239
    :goto_2
    return-object v8

    .line 210
    .end local v0           #btn1:Landroid/widget/Button;
    .end local v1           #btn2:Landroid/widget/Button;
    .end local v2           #btn3:Landroid/widget/Button;
    .end local v4           #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    :cond_1
    const/16 v9, 0x8

    goto :goto_0

    .line 211
    :cond_2
    const/16 v9, 0x8

    goto :goto_1

    .line 220
    .restart local v0       #btn1:Landroid/widget/Button;
    .restart local v1       #btn2:Landroid/widget/Button;
    .restart local v2       #btn3:Landroid/widget/Button;
    .restart local v4       #group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    :cond_3
    invoke-virtual {v4}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getCategoryList()Ljava/util/List;

    move-result-object v5

    .line 221
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/zhangdan/app/data/model/http/Category;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 222
    .local v6, size:I
    const/4 v9, 0x3

    new-array v3, v9, [Lcom/zhangdan/app/data/model/http/Category;

    .line 223
    .local v3, dataArr:[Lcom/zhangdan/app/data/model/http/Category;
    mul-int/lit8 v7, p2, 0x3

    .line 224
    .local v7, start:I
    if-ge v7, v6, :cond_4

    .line 225
    const/4 v10, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/data/model/http/Category;

    aput-object v9, v3, v10

    .line 226
    :cond_4
    add-int/lit8 v9, v7, 0x1

    if-ge v9, v6, :cond_5

    .line 227
    const/4 v10, 0x1

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/data/model/http/Category;

    aput-object v9, v3, v10

    .line 228
    :cond_5
    add-int/lit8 v9, v7, 0x2

    if-ge v9, v6, :cond_6

    .line 229
    const/4 v10, 0x2

    add-int/lit8 v9, v7, 0x2

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zhangdan/app/data/model/http/Category;

    aput-object v9, v3, v10

    .line 230
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v3, v9

    if-nez v9, :cond_7

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    const/4 v9, 0x1

    aget-object v9, v3, v9

    if-nez v9, :cond_8

    const/16 v9, 0x8

    :goto_4
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    const/4 v9, 0x2

    aget-object v9, v3, v9

    if-nez v9, :cond_9

    const/16 v9, 0x8

    :goto_5
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    const/4 v9, 0x0

    aget-object v9, v3, v9

    if-nez v9, :cond_a

    const-string v9, ""

    :goto_6
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v9, 0x1

    aget-object v9, v3, v9

    if-nez v9, :cond_b

    const-string v9, ""

    :goto_7
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    const/4 v9, 0x2

    aget-object v9, v3, v9

    if-nez v9, :cond_c

    const-string v9, ""

    :goto_8
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 237
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 238
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 230
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 231
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 232
    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 233
    :cond_a
    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 234
    :cond_b
    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    .line 235
    :cond_c
    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-virtual {v9}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v9

    goto :goto_8
.end method

.method public getChildrenCount(I)I
    .locals 3
    .parameter "groupPosition"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    .line 247
    .local v1, group:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getCount()I

    move-result v2

    div-int/lit8 v0, v2, 0x3

    .line 248
    .local v0, c:I
    invoke-virtual {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getCount()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-lez v2, :cond_0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 267
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 273
    move-object v4, p3

    .line 274
    .local v4, view:Landroid/view/View;
    if-nez v4, :cond_0

    .line 275
    iget-object v5, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v5}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300aa

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;

    .line 278
    .local v0, data:Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;
    if-nez v0, :cond_1

    .line 286
    :goto_0
    return-object v4

    .line 280
    :cond_1
    const v5, 0x7f090265

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 281
    .local v1, imgIcon:Landroid/widget/ImageView;
    const v5, 0x7f090266

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 282
    .local v2, tvCategoryName:Landroid/widget/TextView;
    const v5, 0x7f090267

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 283
    .local v3, tvCategorySubName:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getIconResId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 284
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryGroup;->getSubName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhangdan/app/data/model/http/Category;

    .line 318
    .local v0, category:Lcom/zhangdan/app/data/model/http/Category;
    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 321
    .local v1, data:Landroid/content/Intent;
    const-string v2, "custom_category_id"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategoryId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v2, "category_name"

    invoke-virtual {v0}, Lcom/zhangdan/app/data/model/http/Category;->getCategotyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 324
    iget-object v2, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    invoke-virtual {v2}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->finish()V

    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 302
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 312
    :goto_0
    return v2

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #setter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v0, p3}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$202(Lcom/zhangdan/app/activities/remark/CategoryActivity;I)I

    .line 310
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mLastGroupPosition:I
    invoke-static {v1}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$200(Lcom/zhangdan/app/activities/remark/CategoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 311
    iget-object v0, p0, Lcom/zhangdan/app/activities/remark/CategoryActivity$CategoryAdapter;->this$0:Lcom/zhangdan/app/activities/remark/CategoryActivity;

    #getter for: Lcom/zhangdan/app/activities/remark/CategoryActivity;->mExpandableListView:Landroid/widget/ExpandableListView;
    invoke-static {v0}, Lcom/zhangdan/app/activities/remark/CategoryActivity;->access$100(Lcom/zhangdan/app/activities/remark/CategoryActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelection(I)V

    goto :goto_0
.end method
