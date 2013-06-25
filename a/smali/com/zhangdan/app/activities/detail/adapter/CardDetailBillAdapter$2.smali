.class Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;
.super Ljava/lang/Object;
.source "CardDetailBillAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v11, 0x7f090246

    if-ne v9, v11, :cond_5

    .line 232
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-string v11, "yuan_detail_star"

    invoke-static {v9, v11}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 234
    .local v7, position:I
    add-int/lit8 v7, v7, -0x2

    .line 235
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_1

    if-ltz v7, :cond_1

    .line 236
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 237
    .local v2, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v5

    .line 238
    .local v5, oldStarFlag:I
    if-nez v5, :cond_2

    const/4 v1, 0x1

    .line 239
    .local v1, currStarFlag:I
    :goto_0
    invoke-virtual {v2, v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setIsStar(I)V

    .line 240
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v11

    invoke-static {v9, v11, v12, v1}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->updateStarFlag(Landroid/content/Context;JI)V

    .line 242
    if-nez v1, :cond_3

    const v9, 0x7f020160

    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v9, p1

    .line 243
    check-cast v9, Landroid/widget/TextView;

    if-nez v1, :cond_4

    const v11, 0x7f070140

    :goto_2
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 246
    .local v6, parentLayout:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 247
    const v9, 0x7f09023f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v1, :cond_0

    const/16 v10, 0x8

    :cond_0
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 295
    .end local v1           #currStarFlag:I
    .end local v2           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v5           #oldStarFlag:I
    .end local v6           #parentLayout:Landroid/view/View;
    .end local v7           #position:I
    :cond_1
    :goto_3
    return-void

    .restart local v2       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .restart local v5       #oldStarFlag:I
    .restart local v7       #position:I
    :cond_2
    move v1, v10

    .line 238
    goto :goto_0

    .line 242
    .restart local v1       #currStarFlag:I
    :cond_3
    const v9, 0x7f02015f

    goto :goto_1

    .line 243
    :cond_4
    const v11, 0x7f070141

    goto :goto_2

    .line 251
    .end local v1           #currStarFlag:I
    .end local v2           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v5           #oldStarFlag:I
    .end local v7           #position:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v11, 0x7f090248

    if-ne v9, v11, :cond_7

    .line 252
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-string v10, "yuan_detail_youhui_store"

    invoke-static {v9, v10}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 254
    .restart local v7       #position:I
    add-int/lit8 v7, v7, -0x2

    .line 255
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_1

    if-ltz v7, :cond_1

    .line 256
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 257
    .restart local v2       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscountKeyword()Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, wordArr:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 261
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 267
    .end local v0           #arr:Lorg/json/JSONArray;
    :cond_6
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v9, "keyword"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v9, "title"

    iget-object v10, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f07015d

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 263
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 264
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 274
    .end local v2           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v7           #position:I
    .end local v8           #wordArr:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v11, 0x7f090247

    if-ne v9, v11, :cond_8

    .line 275
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-string v10, "yuan_detail_remark"

    invoke-static {v9, v10}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 277
    .restart local v7       #position:I
    add-int/lit8 v7, v7, -0x2

    .line 278
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_1

    if-ltz v7, :cond_1

    .line 279
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mShoppingList:Ljava/util/List;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$200(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 280
    .restart local v2       #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 281
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "auto_id"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 282
    const-string v9, "desc"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v9, "custom_category_id"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const-string v9, "store_name"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v9, "remark"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 287
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v4, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 289
    .end local v2           #data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #position:I
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v11, 0x7f09025d

    if-ne v9, v11, :cond_1

    .line 290
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-string v11, "yuan_detail_sms_refresh"

    invoke-static {v9, v11}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    const-class v11, Lcom/zhangdan/app/service/SmsService;

    invoke-direct {v4, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "is_scan_all"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    iget-object v9, p0, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter$2;->this$0:Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;

    #getter for: Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;->access$100(Lcom/zhangdan/app/activities/detail/adapter/CardDetailBillAdapter;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3
.end method
