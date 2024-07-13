<div 
  class="miner-select-item {{$key == 0 ? 'active'  : ''}}" 
  data-system="{{$coin->hashing->id}}" 
  data-hashing="{{$coin->hashing->id}}" 
  data-coinid="{{$coin->id}}"
  data-price="{{@$coin->hashing->price_khs}}" 
  data-cost="{{@$coin->hashing->cost_per_kwh}}" 
  data-consumption="{{@$coin->hashing->power_consumption}}" 
  data-coin="{{@$coin->price}}" 
  data-difficulty="{{floor(@$coin->difficulty)}}" 
  data-reward="{{@$coin->reward_block}}" 
  data-network="{{floor(@$coin->network_hashrate)}}" 
  data-min="{{@$coin->hashing->min_buyable}}" 
  data-max="{{@$coin->hashing->max_buyable}}" 
  data-step="0.001" 
  data-maintenance-fee="{{@$coin->hashing->maintenance_fee}}"
  data-prefix=" {{@$coin->unit}}">{{@$coin->hashing->name}}
</div>