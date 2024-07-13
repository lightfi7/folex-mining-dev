<div class="row">

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Level <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="level" id="first_name" placeholder="Enter Level No." type="text" value="{{@$record->level}}" >
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Required Referred Count <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="ref_num" id="last_name" placeholder="Enter Referred Count" type="text" value="{{@$record->ref_num}}">
    </div>


    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Reward Rate <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="rate" placeholder="Enter Rate Percentage" id="email" type="text" value="{{@$record->rate}}">
    </div>

</div>
