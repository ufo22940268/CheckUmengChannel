.class Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingSheetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;

    .line 234
    .local v2, data:Lcom/zhangdan/app/data/model/ShoppingSheetInfo;
    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v10, 0x7f0902dc

    if-ne v8, v10, :cond_7

    .line 237
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getIsStar()I

    move-result v5

    .line 238
    .local v5, oldStarFlag:I
    if-nez v5, :cond_4

    const/4 v1, 0x1

    .line 239
    .local v1, currStarFlag:I
    :goto_1
    invoke-virtual {v2, v1}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->setIsStar(I)V

    .line 240
    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v10

    invoke-static {v8, v10, v11, v1}, Lcom/zhangdan/app/data/db/util/ShoppingSheetDbUtil;->updateStarFlag(Landroid/content/Context;JI)V

    .line 242
    if-nez v1, :cond_5

    const v8, 0x7f020160

    :goto_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setBackgroundResource(I)V

    move-object v8, p1

    .line 243
    check-cast v8, Landroid/widget/TextView;

    if-nez v1, :cond_6

    const v10, 0x7f070140

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 246
    .local v6, parentLayout:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 247
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .end local v6           #parentLayout:Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .line 248
    .restart local v6       #parentLayout:Landroid/view/View;
    :cond_2
    if-eqz v6, :cond_0

    .line 249
    const v8, 0x7f0902d8

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v1, :cond_3

    const/16 v9, 0x8

    :cond_3
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v1           #currStarFlag:I
    .end local v6           #parentLayout:Landroid/view/View;
    :cond_4
    move v1, v9

    .line 238
    goto :goto_1

    .line 242
    .restart local v1       #currStarFlag:I
    :cond_5
    const v8, 0x7f02015f

    goto :goto_2

    .line 243
    :cond_6
    const v10, 0x7f070141

    goto :goto_3

    .line 252
    .end local v1           #currStarFlag:I
    .end local v5           #oldStarFlag:I
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0902dd

    if-ne v8, v9, :cond_9

    .line 253
    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDiscountKeyword()Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, wordArr:Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, arr:Lorg/json/JSONArray;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 257
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 263
    .end local v0           #arr:Lorg/json/JSONArray;
    :cond_8
    :goto_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "com.zhangdan.preferential.MIX_VIEW_SEARCH_RESULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v8, "keyword"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v8, "title"

    iget-object v9, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v9}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f07015d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 259
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 260
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 269
    .end local v3           #e:Lorg/json/JSONException;
    .end local v7           #wordArr:Ljava/lang/String;
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0902de

    if-ne v8, v9, :cond_0

    .line 270
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 271
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v8, "auto_id"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getAutoId()J

    move-result-wide v9

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 272
    const-string v8, "desc"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getDesciption()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v8, "custom_category_id"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getCustomCategoryId()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v8, "store_name"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getStoreName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v8, "remark"

    invoke-virtual {v2}, Lcom/zhangdan/app/data/model/ShoppingSheetInfo;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/zhangdan/app/activities/remark/BillRemarkActivity;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 277
    iget-object v8, p0, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter$1;->this$0:Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;

    #getter for: Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;->access$000(Lcom/zhangdan/app/activities/shopping/ShoppingSheetAdapter;)Landroid/app/Activity;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v8, v4, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
