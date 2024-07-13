<div class="row">
    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">First Name <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="first_name" id="first_name" placeholder="Enter First Name" type="text" value="{{@$record->first_name}}" {{@$is_show == 1 ? "disabled" : ""}}>
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Last Name <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="last_name" id="last_name" placeholder="Enter Last Name" type="text" value="{{@$record->last_name}}" {{@$is_show == 1 ? "disabled" : ""}}>
    </div>


    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Email <i class="text-danger">*</i></label>
        <input class="form-control form-control-xl" name="email" placeholder="Enter Email" id="email" type="text" value="{{@$record->email}}" {{@$is_show == 1 ? "disabled" : ""}}>
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Phone Number</label>
        <input class="form-control form-control-xl" name="phone_number" placeholder="Enter Phone Number" id="phone_number" type="text" value="{{@$record->phone}}" {{@$is_show == 1 ? "disabled" : ""}}>
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Referrals Count</label>
        <input class="form-control form-control-xl" name="referrals_cnt" placeholder="Enter Referrals Count" id="referrals_cnt" type="text" value="{{@$record->referrals_cnt}}">
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">Bonus</label>
        <input class="form-control form-control-xl" name="bonus" placeholder="Enter Bonus" id="bonus" type="text" value="">
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">2fa Activated Status</label>
        <input type="hidden" name="enable_2fa" id="enable_2fa" value="{{@$record->enable_2fa}}">
        <button class="toggleButton {{$record->enable_2fa==1?'':'disabled'}}" onclick="handleClickFor2fa.call(this)">{{$record->enable_2fa==1?'ON':'OFF'}}</button>
    </div>

    <div class="col-md-6 pb-3 mb-md-4">
        <label class="form-label form-label-lg">KYC Activated Status</label>
        <input type="hidden" name="kyc_enabled" id="kyc_enabled" value="{{@$record->kyc_enabled}}">
        <button class="toggleButton {{$record->kyc_enabled==1?'':'disabled'}}" onclick="handleClickForKYC.call(this)">{{$record->kyc_enabled==1?'ON':'OFF'}}</button>
    </div>

    <input type="hidden" name="id" value="{{@$record->id}}">
</form>
</div>
