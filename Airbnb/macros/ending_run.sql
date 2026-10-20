{% macro ending_run() %}
    {% if execute %}
      {{ log("Ending the run", info=True) }}
    {% endif %}
{% endmacro %}